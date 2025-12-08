import argparse
import re
import requests
import time
from pathlib import Path
from typing import Optional

from bs4 import BeautifulSoup
from youtube_transcript_api import YouTubeTranscriptApi
from youtube_transcript_api._errors import TranscriptsDisabled, NoTranscriptFound
from youtube_transcript_api.proxies import WebshareProxyConfig


def timestamp_to_seconds(timestamp: str) -> float:
    """Convert timestamp like '2:30:00', '1:45:30', or '45:30' to seconds."""
    parts = timestamp.strip().split(":")
    if len(parts) == 3:
        h, m, s = parts
        return int(h) * 3600 + int(m) * 60 + float(s)
    elif len(parts) == 2:
        m, s = parts
        return int(m) * 60 + float(s)
    return float(parts[0])


def seconds_to_timestamp(seconds: float) -> str:
    """Convert seconds to timestamp string like '2:30:00'."""
    h = int(seconds // 3600)
    m = int((seconds % 3600) // 60)
    s = int(seconds % 60)
    if h > 0:
        return f"{h}:{m:02d}:{s:02d}"
    return f"{m}:{s:02d}"


def create_output_folder():
    """Create an output folder if it doesn't exist."""
    output_path = Path.cwd() / "output"
    if not output_path.exists():
        output_path.mkdir()
        print(f"[INFO] Created output folder at {output_path}")
    return output_path


def get_video_id(link):
    """Extract video ID from a YouTube link."""
    if "watch?v=" in link:
        return link.split("watch?v=")[-1].split("&")[0]
    elif "youtu.be/" in link:
        return link.split("youtu.be/")[-1].split("?")[0]
    else:
        raise ValueError("Invalid YouTube link provided.")


def fetch_video_title_from_web(video_id):
    """Fetch video title by scraping the YouTube video page."""
    try:
        url = f"https://www.youtube.com/watch?v={video_id}"
        response = requests.get(url)
        if response.status_code == 200:
            soup = BeautifulSoup(response.text, "html.parser")
            title_tag = soup.find("title")
            if title_tag and title_tag.string:
                return title_tag.string.replace(" - YouTube", "").strip()
        return video_id  # Fallback to video ID if title cannot be fetched
    except Exception as e:
        print(
            f"[ERROR] Could not fetch video title for video ID {video_id} via web scraping: {e}"
        )
        return video_id


def fetch_available_languages(video_id):
    """Fetch available transcript languages for a video."""
    try:
        api = YouTubeTranscriptApi()
        transcript_list = api.list(video_id)
        available_languages = {}

        # Parse the string representation to extract language codes and names
        transcript_str = str(transcript_list)
        lines = transcript_str.split("\n")

        for line in lines:
            # Match lines like: - en ("English (auto-generated)")
            match = re.search(r'-\s+(\S+)\s+\("([^"]+)"\)', line)
            if match:
                code = match.group(1)
                name = match.group(2)
                available_languages[code] = name

        return available_languages
    except Exception as e:
        print(
            f"[ERROR] Could not fetch available languages for video ID {video_id}: {e}"
        )
        return {}


def download_transcript(
    video_id,
    languages,
    start_time: Optional[float] = None,
    end_time: Optional[float] = None,
):
    """Download the transcript for a given video ID in the specified language.

    Args:
        video_id: YouTube video ID
        languages: List of language codes to try
        start_time: Optional start time in seconds to filter transcript
        end_time: Optional end time in seconds to filter transcript
    """
    try:
        api = YouTubeTranscriptApi(
            proxy_config=WebshareProxyConfig(
                proxy_username="jgibniwl",
                proxy_password="aoo8lcjlc3rf",
            )
        )
        fetched_transcript = api.fetch(video_id, languages)

        # Convert FetchedTranscript to list of dicts
        transcript = []
        for snippet in fetched_transcript:
            # Filter by timestamp if specified
            if start_time is not None and snippet.start < start_time:
                continue
            if end_time is not None and snippet.start > end_time:
                continue

            # Remove unwanted text like [Applause], [Music], etc.
            cleaned_text = re.sub(r"\[.*?\]", "", snippet.text).strip()
            if cleaned_text:  # Only add if there's text after cleaning
                transcript.append({"text": cleaned_text})

        return transcript
    except TranscriptsDisabled:
        print(f"[ERROR] Transcripts are disabled for video ID: {video_id}")
        return None
    except NoTranscriptFound:
        print(f"[ERROR] No transcript found for video ID: {video_id}")
        return None
    except Exception as e:
        print(f"[ERROR] An error occurred while fetching the transcript: {e}")
        return None


def save_transcript_to_file(transcript, title, output_folder):
    """Save the transcript to a text file."""
    sanitized_title = re.sub(
        r"[\\/*?\"<>|]", "", title
    )  # Remove invalid filename characters
    file_name = f"{sanitized_title}.txt"
    file_path = output_folder / file_name
    with open(file_path, "w", encoding="utf-8") as file:
        for entry in transcript:
            file.write(f"{entry['text']}\n")
    print(f"[INFO] Transcript saved to {file_path}")


def process_video(link, output_folder):
    """Process a single video link."""
    try:
        print(f"\n[INFO] Processing: {link}")
        video_id = get_video_id(link)

        # Fetch available languages
        available_languages = fetch_available_languages(video_id)
        if not available_languages:
            print(f"[ERROR] No available languages for video ID: {video_id}")
            return

        print("Available languages:")
        for code, lang in available_languages.items():
            print(f"- {lang} ({code})")

        selected_language = input(
            "Enter the language code you want to download the transcript in: "
        ).strip()
        if selected_language not in available_languages:
            print(f"[ERROR] Invalid language code: {selected_language}")
            return

        # Ask for optional time range filtering
        start_time = None
        end_time = None
        time_filter = input("Filter by time range? (y/n): ").strip().lower()
        if time_filter == "y":
            start_input = input(
                "Enter start time (e.g., '2:30:00' or '45:30', leave empty for beginning): "
            ).strip()
            end_input = input(
                "Enter end time (e.g., '3:15:00' or '90:00', leave empty for end): "
            ).strip()

            if start_input:
                start_time = timestamp_to_seconds(start_input)
                print(
                    f"  Start: {seconds_to_timestamp(start_time)} ({start_time:.0f}s)"
                )
            if end_input:
                end_time = timestamp_to_seconds(end_input)
                print(f"  End: {seconds_to_timestamp(end_time)} ({end_time:.0f}s)")

        transcript = download_transcript(
            video_id,
            languages=[selected_language],
            start_time=start_time,
            end_time=end_time,
        )
        if transcript:
            video_title = fetch_video_title_from_web(video_id)
            save_transcript_to_file(transcript, video_title, output_folder)
    except ValueError as e:
        print(f"[ERROR] {e}")
    except Exception as e:
        print(f"[ERROR] An unexpected error occurred: {e}")


def process_video_cli(
    link,
    output_folder,
    language=None,
    start_time=None,
    end_time=None,
    list_languages=False,
    output_file=None,
    force=False,
):
    """Process a single video link with CLI arguments (non-interactive)."""
    try:
        # Check if output file already exists (skip unless --force)
        if output_file and not force:
            file_path = Path(output_file)
            if not file_path.is_absolute() and file_path.parent == Path("."):
                file_path = output_folder / file_path
            if file_path.suffix != ".txt":
                file_path = file_path.with_suffix(".txt")
            if file_path.exists():
                print(
                    f"[SKIP] File already exists: {file_path} (use --force to overwrite)"
                )
                return

        print(f"\n[INFO] Processing: {link}")
        video_id = get_video_id(link)

        # Fetch available languages
        available_languages = fetch_available_languages(video_id)
        if not available_languages:
            print(f"[ERROR] No available languages for video ID: {video_id}")
            return

        # If --list-languages, just show languages and exit
        if list_languages:
            print("Available languages:")
            for code, lang in available_languages.items():
                print(f"  {code}: {lang}")
            return

        # Use provided language or default to 'en'
        selected_language = language or "en"
        if selected_language not in available_languages:
            print(f"[ERROR] Language '{selected_language}' not available.")
            print("Available languages:")
            for code, lang in available_languages.items():
                print(f"  {code}: {lang}")
            return

        print(
            f"[INFO] Using language: {available_languages[selected_language]} ({selected_language})"
        )

        if start_time is not None or end_time is not None:
            time_info = []
            if start_time is not None:
                time_info.append(f"from {seconds_to_timestamp(start_time)}")
            if end_time is not None:
                time_info.append(f"to {seconds_to_timestamp(end_time)}")
            print(f"[INFO] Time filter: {' '.join(time_info)}")

        transcript = download_transcript(
            video_id,
            languages=[selected_language],
            start_time=start_time,
            end_time=end_time,
        )
        if transcript:
            if output_file:
                # Use explicit filename
                file_path = Path(output_file)
                # If it's just a filename (no directory), put it in output_folder
                if not file_path.is_absolute() and file_path.parent == Path("."):
                    file_path = output_folder / file_path
                # Ensure parent directory exists
                file_path.parent.mkdir(parents=True, exist_ok=True)
                # Add .txt extension if not present
                if file_path.suffix != ".txt":
                    file_path = file_path.with_suffix(".txt")
                with open(file_path, "w", encoding="utf-8") as file:
                    for entry in transcript:
                        file.write(f"{entry['text']}\n")
                print(f"[INFO] Transcript saved to {file_path}")
            else:
                video_title = fetch_video_title_from_web(video_id)
                save_transcript_to_file(transcript, video_title, output_folder)
    except ValueError as e:
        print(f"[ERROR] {e}")
    except Exception as e:
        print(f"[ERROR] An unexpected error occurred: {e}")


def main():
    """Main function to handle user input and process videos."""
    parser = argparse.ArgumentParser(
        description="Download YouTube video transcripts with optional time filtering.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  %(prog)s https://youtube.com/watch?v=ABC123
      Download transcript for a video (defaults to English)

  %(prog)s https://youtube.com/watch?v=ABC123 -l es
      Download Spanish transcript

  %(prog)s https://youtube.com/watch?v=ABC123 --start 2:30:00 --end 3:15:00
      Download only the portion from 2h30m to 3h15m

  %(prog)s https://youtube.com/watch?v=ABC123 --start 1:00:00 --end 2:00:00 -f "talk1.txt"
      Download a segment with a custom filename

  %(prog)s https://youtube.com/watch?v=ABC123 --list-languages
      Show available transcript languages

  %(prog)s --interactive
      Run in interactive mode (prompts for input)
""",
    )

    parser.add_argument(
        "urls", nargs="*", help="YouTube video URL(s) to download transcripts from"
    )
    parser.add_argument(
        "-l",
        "--language",
        default="en",
        help="Language code for transcript (default: en)",
    )
    parser.add_argument(
        "--start",
        metavar="TIME",
        help="Start time for transcript filtering (e.g., '2:30:00' or '45:30')",
    )
    parser.add_argument(
        "--end",
        metavar="TIME",
        help="End time for transcript filtering (e.g., '3:15:00' or '90:00')",
    )
    parser.add_argument(
        "-o",
        "--output",
        metavar="DIR",
        help="Output directory for transcripts (default: ./output)",
    )
    parser.add_argument(
        "-f",
        "--filename",
        metavar="FILE",
        help="Explicit output filename (e.g., 'talk1.txt' or 'talks/keynote.txt')",
    )
    parser.add_argument(
        "--list-languages",
        action="store_true",
        help="List available transcript languages for the video(s)",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Overwrite existing files (default: skip if file exists)",
    )
    parser.add_argument(
        "--delay",
        type=float,
        default=5.0,
        metavar="SECONDS",
        help="Delay between requests to avoid rate limiting (default: 5 seconds)",
    )
    parser.add_argument(
        "-i",
        "--interactive",
        action="store_true",
        help="Run in interactive mode (prompts for all options)",
    )

    args = parser.parse_args()

    # Interactive mode
    if args.interactive or (not args.urls and not args.list_languages):
        print("Welcome to YouTube Transcript Downloader (Interactive Mode)")
        output_folder = create_output_folder()
        links = input("Enter YouTube video links separated by commas:\n").strip()
        video_links = [link.strip() for link in links.split(",") if link.strip()]
        for link in video_links:
            process_video(link, output_folder)
        return

    # CLI mode
    if not args.urls:
        parser.error(
            "Please provide at least one YouTube URL or use --interactive mode"
        )

    # Set up output folder
    if args.output:
        output_folder = Path(args.output)
        output_folder.mkdir(parents=True, exist_ok=True)
    else:
        output_folder = create_output_folder()

    # Parse time filters
    start_time = timestamp_to_seconds(args.start) if args.start else None
    end_time = timestamp_to_seconds(args.end) if args.end else None

    # Process each URL
    for i, url in enumerate(args.urls):
        process_video_cli(
            url,
            output_folder,
            language=args.language,
            start_time=start_time,
            end_time=end_time,
            list_languages=args.list_languages,
            output_file=args.filename,
            force=args.force,
        )
        # Sleep between requests to avoid rate limiting (not after last one)
        if i < len(args.urls) - 1 and not args.list_languages:
            print(f"[INFO] Waiting {args.delay}s before next request...")
            time.sleep(args.delay)


if __name__ == "__main__":
    main()

