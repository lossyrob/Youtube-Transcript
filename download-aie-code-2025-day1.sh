#!/bin/bash
# Download all talks from AIE CODE 2025 Day 1
# Video: https://www.youtube.com/watch?v=cMSprbJ95jg

VIDEO_URL="https://www.youtube.com/watch?v=cMSprbJ95jg"
OUTPUT_DIR="output/AIE CODE 2025 DAY 1"
DELAY=5  # seconds between requests to avoid rate limiting

echo "Downloading AIE CODE 2025 Day 1 transcripts..."
echo "Output directory: $OUTPUT_DIR"
echo "Delay between requests: ${DELAY}s"
echo ""

# Intro & Opening Performance (00:00 - 13:19)
echo "[1/20] Downloading: Intro & Opening Performance..."
python main.py "$VIDEO_URL" --start 0:00 --end 13:19 -o "$OUTPUT_DIR" -f "00-Intro-Opening-Performance.txt"
sleep $DELAY

# Opening Remarks - Alex Lieberman (13:19 - 16:16)
echo "[2/20] Downloading: Opening Remarks (Alex Lieberman)..."
python main.py "$VIDEO_URL" --start 13:19 --end 16:16 -o "$OUTPUT_DIR" -f "01-Opening-Remarks-Alex-Lieberman.txt"
sleep $DELAY

# Katelyn Lesse (Anthropic): Building Powerful Agentic Systems with Claude (16:16 - 29:33)
echo "[3/20] Downloading: Katelyn Lesse (Anthropic) - Agentic Systems..."
python main.py "$VIDEO_URL" --start 16:16 --end 29:33 -o "$OUTPUT_DIR" -f "02-Katelyn-Lesse-Anthropic-Agentic-Systems.txt"
sleep $DELAY

# Michele Catasta (Replit): Building the Future of Autonomous Coding (29:33 - 54:08)
echo "[4/20] Downloading: Michele Catasta (Replit) - Autonomous Coding..."
python main.py "$VIDEO_URL" --start 29:33 --end 54:08 -o "$OUTPUT_DIR" -f "03-Michele-Catasta-Replit-Autonomous-Coding.txt"
sleep $DELAY

# Lisa Orr (Zapier): Empowering Support to Ship Code (54:08 - 1:10:06)
echo "[5/20] Downloading: Lisa Orr (Zapier) - Support Ship Code..."
python main.py "$VIDEO_URL" --start 54:08 --end 1:10:06 -o "$OUTPUT_DIR" -f "04-Lisa-Orr-Zapier-Support-Ship-Code.txt"
sleep $DELAY

# Steve Yegge & Gene Kim: The Year the IDE Died & Vibe Coding (1:10:06 - 2:02:00)
echo "[6/20] Downloading: Steve Yegge & Gene Kim - IDE Died & Vibe Coding..."
python main.py "$VIDEO_URL" --start 1:10:06 --end 2:02:00 -o "$OUTPUT_DIR" -f "05-Steve-Yegge-Gene-Kim-IDE-Died-Vibe-Coding.txt"
sleep $DELAY

# Bill Chen & Brian Fioca (OpenAI): Building Coding Agents & The Codex Harness (2:02:00 - 2:20:03)
echo "[7/20] Downloading: Bill Chen & Brian Fioca (OpenAI) - Codex Harness..."
python main.py "$VIDEO_URL" --start 2:02:00 --end 2:20:03 -o "$OUTPUT_DIR" -f "06-Bill-Chen-Brian-Fioca-OpenAI-Codex-Harness.txt"
sleep $DELAY

# Martin Harrison & Natasha Maniar (McKinsey): Reshaping Software Delivery (2:20:03 - 2:41:45)
echo "[8/20] Downloading: McKinsey - Reshaping Software Delivery..."
python main.py "$VIDEO_URL" --start 2:20:03 --end 2:41:45 -o "$OUTPUT_DIR" -f "07-McKinsey-Reshaping-Software-Delivery.txt"
sleep $DELAY

# Yegor Denisov-Blanch (Stanford): Measuring AI Impact on Developer Productivity (2:41:45 - 2:58:11)
echo "[9/20] Downloading: Yegor Denisov-Blanch (Stanford) - AI Productivity..."
python main.py "$VIDEO_URL" --start 2:41:45 --end 2:58:11 -o "$OUTPUT_DIR" -f "08-Yegor-Denisov-Blanch-Stanford-AI-Productivity.txt"
sleep $DELAY

# Itamar Friedman (CodiumAI): AI Code Quality - Hype vs Reality (2:58:11 - 3:19:30)
echo "[10/20] Downloading: Itamar Friedman (CodiumAI) - Code Quality..."
python main.py "$VIDEO_URL" --start 2:58:11 --end 3:19:30 -o "$OUTPUT_DIR" -f "09-Itamar-Friedman-CodiumAI-Code-Quality.txt"
sleep $DELAY

# Olive Song (MiniMax): MiniMax M2 Model for Long-Horizon Tasks (3:19:30 - 4:47:42)
echo "[11/20] Downloading: Olive Song (MiniMax) - M2 Long-Horizon..."
python main.py "$VIDEO_URL" --start 3:19:30 --end 4:47:42 -o "$OUTPUT_DIR" -f "10-Olive-Song-MiniMax-M2-Long-Horizon.txt"
sleep $DELAY

# Kat Korevec (Google Labs): Proactive Agents (Project Jules) (4:47:42 - 5:03:24)
echo "[12/20] Downloading: Kat Korevec (Google Labs) - Project Jules..."
python main.py "$VIDEO_URL" --start 4:47:42 --end 5:03:24 -o "$OUTPUT_DIR" -f "11-Kat-Korevec-Google-Labs-Project-Jules.txt"
sleep $DELAY

# Asaf Bord (Northwestern Mutual): GenBI & AI in Risk-Averse Enterprises (5:03:24 - 5:26:00)
echo "[13/20] Downloading: Asaf Bord (Northwestern Mutual) - GenBI..."
python main.py "$VIDEO_URL" --start 5:03:24 --end 5:26:00 -o "$OUTPUT_DIR" -f "12-Asaf-Bord-Northwestern-Mutual-GenBI.txt"
sleep $DELAY

# Lei Zhang (Bloomberg): Deploying AI in a 9,000 Engineer Org (5:26:00 - 5:44:15)
echo "[14/20] Downloading: Lei Zhang (Bloomberg) - AI 9000 Engineers..."
python main.py "$VIDEO_URL" --start 5:26:00 --end 5:44:15 -o "$OUTPUT_DIR" -f "13-Lei-Zhang-Bloomberg-AI-9000-Engineers.txt"
sleep $DELAY

# Samir Mody (The Browser Company): Building an AI Native Browser (Dia) (5:44:15 - 6:02:07)
echo "[15/20] Downloading: Samir Mody (Browser Company) - Dia..."
python main.py "$VIDEO_URL" --start 5:44:15 --end 6:02:07 -o "$OUTPUT_DIR" -f "14-Samir-Mody-Browser-Company-Dia.txt"
sleep $DELAY

# Max Kanat-Alexander (Capital One): Scaling Output, Not Overhead (6:02:07 - 7:00:20)
echo "[16/20] Downloading: Max Kanat-Alexander (Capital One) - Scaling..."
python main.py "$VIDEO_URL" --start 6:02:07 --end 7:00:20 -o "$OUTPUT_DIR" -f "15-Max-Kanat-Alexander-Capital-One-Scaling.txt"
sleep $DELAY

# NLW (AI Daily Brief): Enterprise AI Adoption Status & ROI (7:00:20 - 7:15:01)
echo "[17/20] Downloading: NLW (AI Daily Brief) - Enterprise ROI..."
python main.py "$VIDEO_URL" --start 7:00:20 --end 7:15:01 -o "$OUTPUT_DIR" -f "16-NLW-AI-Daily-Brief-Enterprise-ROI.txt"
sleep $DELAY

# Arman Hezarkhani (10x): Paying Engineers Like Salespeople (7:15:01 - 7:34:01)
echo "[18/20] Downloading: Arman Hezarkhani (10x) - Story Point Compensation..."
python main.py "$VIDEO_URL" --start 7:15:01 --end 7:34:01 -o "$OUTPUT_DIR" -f "17-Arman-Hezarkhani-10x-Story-Point-Compensation.txt"
sleep $DELAY

# Justin Reock (DX): Effective Leadership in AI-Enhanced Organizations (7:34:01 - 7:52:14)
echo "[19/20] Downloading: Justin Reock (DX) - AI Leadership..."
python main.py "$VIDEO_URL" --start 7:34:01 --end 7:52:14 -o "$OUTPUT_DIR" -f "18-Justin-Reock-DX-AI-Leadership.txt"
sleep $DELAY

# Dan Shipper (Every): Building an AI Native Company (7:52:14 - end)
echo "[20/20] Downloading: Dan Shipper (Every) - AI Native Company..."
python main.py "$VIDEO_URL" --start 7:52:14 -o "$OUTPUT_DIR" -f "19-Dan-Shipper-Every-AI-Native-Company.txt"

echo ""
echo "Done! All transcripts saved to: $OUTPUT_DIR"
