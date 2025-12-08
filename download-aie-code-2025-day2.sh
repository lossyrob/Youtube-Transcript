#!/bin/bash
# Download all talks from AIE CODE 2025 Day 2
# Video: https://www.youtube.com/watch?v=xmbSQz-PNMM

VIDEO_URL="https://www.youtube.com/watch?v=xmbSQz-PNMM"
OUTPUT_DIR="output/AIE CODE 2025 DAY 2"
DELAY=5  # seconds between requests to avoid rate limiting

echo "Downloading AIE CODE 2025 Day 2 transcripts..."
echo "Output directory: $OUTPUT_DIR"
echo "Delay between requests: ${DELAY}s"
echo ""

# Host Jed Borovik opens Day 2 (00:10:51 - 00:14:40)
echo "[1/21] Downloading: Jed Borovik - Day 2 Opening..."
python main.py "$VIDEO_URL" --start 10:51 --end 14:40 -o "$OUTPUT_DIR" -f "01-Jed-Borovik-Day2-Opening.txt"
sleep $DELAY

# Keynote: swyx "War on Slop" (00:14:40 - 00:23:52)
echo "[2/21] Downloading: swyx - War on Slop Keynote..."
python main.py "$VIDEO_URL" --start 14:40 --end 23:52 -o "$OUTPUT_DIR" -f "02-swyx-War-on-Slop-Keynote.txt"
sleep $DELAY

# Anthropic's Barry Zhang & Mahesh Murag: Building Skills, not Agents (00:23:52 - 00:40:08)
echo "[3/21] Downloading: Barry Zhang & Mahesh Murag (Anthropic) - Skills not Agents..."
python main.py "$VIDEO_URL" --start 23:52 --end 40:08 -o "$OUTPUT_DIR" -f "03-Anthropic-Barry-Zhang-Mahesh-Murag-Skills-Not-Agents.txt"
sleep $DELAY

# Human Layer CEO Dex Horthy: Advanced Context Engineering (00:40:08 - 01:00:31)
echo "[4/21] Downloading: Dex Horthy (Human Layer) - Advanced Context Engineering..."
python main.py "$VIDEO_URL" --start 40:08 --end 1:00:31 -o "$OUTPUT_DIR" -f "04-Dex-Horthy-Human-Layer-Context-Engineering.txt"
sleep $DELAY

# Cursor's Lee Robinson: Infrastructure behind Cursor Composer (01:00:31 - 01:15:57)
echo "[5/21] Downloading: Lee Robinson (Cursor) - Cursor Composer Infrastructure..."
python main.py "$VIDEO_URL" --start 1:00:31 --end 1:15:57 -o "$OUTPUT_DIR" -f "05-Lee-Robinson-Cursor-Composer-Infrastructure.txt"
sleep $DELAY

# Cursor's Naman Jain: History of Evals (01:15:57 - 02:07:18)
echo "[6/21] Downloading: Naman Jain (Cursor) - History of Evals..."
python main.py "$VIDEO_URL" --start 1:15:57 --end 2:07:18 -o "$OUTPUT_DIR" -f "06-Naman-Jain-Cursor-History-of-Evals.txt"
sleep $DELAY

# Meta's Jacob Kahn: Code World Models (02:07:18 - 02:23:55)
echo "[7/21] Downloading: Jacob Kahn (Meta) - Code World Models..."
python main.py "$VIDEO_URL" --start 2:07:18 --end 2:23:55 -o "$OUTPUT_DIR" -f "07-Jacob-Kahn-Meta-Code-World-Models.txt"
sleep $DELAY

# Applied Compute: Efficient Reinforcement Learning (02:23:55 - 02:44:04)
echo "[8/21] Downloading: Rhythm Garg & Linden Li (Applied Compute) - Efficient RL..."
python main.py "$VIDEO_URL" --start 2:23:55 --end 2:44:04 -o "$OUTPUT_DIR" -f "08-Applied-Compute-Efficient-RL.txt"
sleep $DELAY

# Prime Intellect's Will Brown: Open Superintelligence Stack (02:44:04 - 03:02:33)
echo "[9/21] Downloading: Will Brown (Prime Intellect) - Open Superintelligence Stack..."
python main.py "$VIDEO_URL" --start 2:44:04 --end 3:02:33 -o "$OUTPUT_DIR" -f "09-Will-Brown-Prime-Intellect-Open-Superintelligence.txt"
sleep $DELAY

# OpenAI's Will Hang & Cathy Zhou: Agent Reinforcement Fine-Tuning (03:02:33 - 03:19:24)
echo "[10/21] Downloading: Will Hang & Cathy Zhou (OpenAI) - AgentRFT..."
python main.py "$VIDEO_URL" --start 3:02:33 --end 3:19:24 -o "$OUTPUT_DIR" -f "10-OpenAI-Will-Hang-Cathy-Zhou-AgentRFT.txt"
sleep $DELAY

# Kitze: Vibe Engineering and PETA Dev (03:19:24 - 05:11:35)
echo "[11/21] Downloading: Kitze - Vibe Engineering & PETA Dev..."
python main.py "$VIDEO_URL" --start 3:19:24 --end 5:11:35 -o "$OUTPUT_DIR" -f "11-Kitze-Vibe-Engineering-PETA-Dev.txt"
sleep $DELAY

# Factory's Eno Reyes: Making Codebases Agent-Ready (05:11:35 - 05:27:02)
echo "[12/21] Downloading: Eno Reyes (Factory) - Codebases Agent-Ready..."
python main.py "$VIDEO_URL" --start 5:11:35 --end 5:27:02 -o "$OUTPUT_DIR" -f "12-Eno-Reyes-Factory-Codebases-Agent-Ready.txt"
sleep $DELAY

# Sourcegraph CTO Beyang Liu: Amp Architecture (05:27:02 - 05:45:28)
echo "[13/21] Downloading: Beyang Liu (Sourcegraph) - Amp Architecture..."
python main.py "$VIDEO_URL" --start 5:27:02 --end 5:45:28 -o "$OUTPUT_DIR" -f "13-Beyang-Liu-Sourcegraph-Amp-Architecture.txt"
sleep $DELAY

# Gimlet Labs' Natalie Serrino: AI for PyTorch Kernels (05:45:28 - 06:04:39)
echo "[14/21] Downloading: Natalie Serrino (Gimlet Labs) - AI PyTorch Kernels..."
python main.py "$VIDEO_URL" --start 5:45:28 --end 6:04:39 -o "$OUTPUT_DIR" -f "14-Natalie-Serrino-Gimlet-Labs-PyTorch-Kernels.txt"
sleep $DELAY

# Netflix's Jake Nations: Infinite Software Crisis (06:04:39 - 07:07:26)
echo "[15/21] Downloading: Jake Nations (Netflix) - Infinite Software Crisis..."
python main.py "$VIDEO_URL" --start 6:04:39 --end 7:07:26 -o "$OUTPUT_DIR" -f "15-Jake-Nations-Netflix-Infinite-Software-Crisis.txt"
sleep $DELAY

# Poolside CEO Jason Warner: Full-Stack Model Demo (07:07:26 - 07:23:33)
echo "[16/21] Downloading: Jason Warner (Poolside) - Full-Stack Model Demo..."
python main.py "$VIDEO_URL" --start 7:07:26 --end 7:23:33 -o "$OUTPUT_DIR" -f "16-Jason-Warner-Poolside-Full-Stack-Demo.txt"
sleep $DELAY

# Arize CPO Aparna Dhinakaran: Prompt Learning & LLM-as-a-Judge (07:23:33 - 07:34:21)
echo "[17/21] Downloading: Aparna Dhinakaran (Arize) - Prompt Learning LLM-as-Judge..."
python main.py "$VIDEO_URL" --start 7:23:33 --end 7:34:21 -o "$OUTPUT_DIR" -f "17-Aparna-Dhinakaran-Arize-Prompt-Learning.txt"
sleep $DELAY

# Cline's Nik Pash: Capability beats Scaffolding, ClineBench (07:34:21 - 07:48:33)
echo "[18/21] Downloading: Nik Pash (Cline) - Capability vs Scaffolding ClineBench..."
python main.py "$VIDEO_URL" --start 7:34:21 --end 7:48:33 -o "$OUTPUT_DIR" -f "18-Nik-Pash-Cline-ClineBench.txt"
sleep $DELAY

# Meta/METR's Joel Becker: AI Agents Benchmarks vs Real Developers (07:48:33 - 08:09:48)
echo "[19/21] Downloading: Joel Becker (Meta/METR) - AI Agents vs Real Developers..."
python main.py "$VIDEO_URL" --start 7:48:33 --end 8:09:48 -o "$OUTPUT_DIR" -f "19-Joel-Becker-Meta-METR-Agents-vs-Developers.txt"
sleep $DELAY

# Google DeepMind's Kevin Hou: Project Anti-Gravity AI-native IDE (08:09:48 - 08:35:26)
echo "[20/21] Downloading: Kevin Hou (Google DeepMind) - Project Anti-Gravity..."
python main.py "$VIDEO_URL" --start 8:09:48 --end 8:35:26 -o "$OUTPUT_DIR" -f "20-Kevin-Hou-Google-DeepMind-Project-Anti-Gravity.txt"
sleep $DELAY

# Closing remarks and announcements (08:35:26 - end)
echo "[21/21] Downloading: Closing Remarks & 2026 Announcements..."
python main.py "$VIDEO_URL" --start 8:35:26 -o "$OUTPUT_DIR" -f "21-Closing-Remarks-2026-Announcements.txt"

echo ""
echo "Done! All transcripts saved to: $OUTPUT_DIR"
