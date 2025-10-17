from pathlib import Path
from youtube_transcript_api import YouTubeTranscriptApi
from youtube_transcript_api._errors import TranscriptsDisabled, NoTranscriptFound
import re
import requests
from bs4 import BeautifulSoup

def create_output_folder():
    """Create an output folder if it doesn't exist."""
    output_path = Path.cwd() / 'output'
    if not output_path.exists():
        output_path.mkdir()
        print(f"[INFO] Created output folder at {output_path}")
    return output_path

def get_video_id(link):
    """Extract video ID from a YouTube link."""
    if 'watch?v=' in link:
        return link.split('watch?v=')[-1].split('&')[0]
    elif 'youtu.be/' in link:
        return link.split('youtu.be/')[-1].split('?')[0]
    else:
        raise ValueError("Invalid YouTube link provided.")

def fetch_video_title_from_web(video_id):
    """Fetch video title by scraping the YouTube video page."""
    try:
        url = f"https://www.youtube.com/watch?v={video_id}"
        response = requests.get(url)
        if response.status_code == 200:
            soup = BeautifulSoup(response.text, 'html.parser')
            title_tag = soup.find('title')
            if title_tag and title_tag.string:
                return title_tag.string.replace(" - YouTube", "").strip()
        return video_id  # Fallback to video ID if title cannot be fetched
    except Exception as e:
        print(f"[ERROR] Could not fetch video title for video ID {video_id} via web scraping: {e}")
        return video_id

def fetch_available_languages(video_id):
    """Fetch available transcript languages for a video."""
    try:
        api = YouTubeTranscriptApi()
        transcript_list = api.list(video_id)
        available_languages = {}
        
        # Parse the string representation to extract language codes and names
        transcript_str = str(transcript_list)
        lines = transcript_str.split('\n')
        
        for line in lines:
            # Match lines like: - en ("English (auto-generated)")
            match = re.search(r'-\s+(\S+)\s+\("([^"]+)"\)', line)
            if match:
                code = match.group(1)
                name = match.group(2)
                available_languages[code] = name
        
        return available_languages
    except Exception as e:
        print(f"[ERROR] Could not fetch available languages for video ID {video_id}: {e}")
        return {}

def download_transcript(video_id, languages):
    """Download the transcript for a given video ID in the specified language."""
    try:
        api = YouTubeTranscriptApi()
        fetched_transcript = api.fetch(video_id, languages)
        
        # Convert FetchedTranscript to list of dicts
        transcript = []
        for snippet in fetched_transcript:
            # Remove unwanted text like [Applause], [Music], etc.
            cleaned_text = re.sub(r'\[.*?\]', '', snippet.text).strip()
            if cleaned_text:  # Only add if there's text after cleaning
                transcript.append({'text': cleaned_text})
        
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
    sanitized_title = re.sub(r'[\\/*?\"<>|]', '', title)  # Remove invalid filename characters
    file_name = f"{sanitized_title}.txt"
    file_path = output_folder / file_name
    with open(file_path, 'w', encoding='utf-8') as file:
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

        selected_language = input("Enter the language code you want to download the transcript in: ").strip()
        if selected_language not in available_languages:
            print(f"[ERROR] Invalid language code: {selected_language}")
            return

        transcript = download_transcript(video_id, languages=[selected_language])
        if transcript:
            video_title = fetch_video_title_from_web(video_id)
            save_transcript_to_file(transcript, video_title, output_folder)
    except ValueError as e:
        print(f"[ERROR] {e}")
    except Exception as e:
        print(f"[ERROR] An unexpected error occurred: {e}")

def main():
    """Main function to handle user input and process videos."""
    print("Welcome to YouTube Transcript Downloader")
    output_folder = create_output_folder()

    links = input("Enter YouTube video links separated by commas:\n").strip()
    video_links = [link.strip() for link in links.split(',') if link.strip()]

    for link in video_links:
        process_video(link, output_folder)

if __name__ == "__main__":
    main()

