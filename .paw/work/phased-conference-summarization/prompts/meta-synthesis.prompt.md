---
description: Prompt template for generating conference-level meta-synthesis from all talk summaries
---

# Meta-Synthesis Prompt Template

You are creating a **conference-level meta-synthesis** of the AI Engineer Code Summit 2025 (AIE CODE 2025). You have access to summaries of all 35 talks from the two-day conference.

## Your Inputs

All 35 summary files from `output/summaries/` (d1-XX and d2-XX files)

## Your Task

Analyze all summaries to produce a comprehensive conference synthesis that:
1. Identifies major themes and patterns across talks
2. Maps agreements and disagreements between speakers
3. Extracts actionable insights for different audiences
4. Provides curated "must-watch" recommendations

## Output Format

Create the following document:

---

```markdown
# AIE CODE 2025 - Conference Meta-Synthesis

**Conference**: AI Engineer Code Summit 2025
**Talks Analyzed**: 35 (20 Day 1 + 15 Day 2)
**Generated**: [Date]

---

## 📌 Executive Summary

[Write 400-500 words capturing the overall story of this conference. What is the current state of AI-assisted coding according to these speakers? What are the major shifts happening? What surprised you? What's the dominant narrative, and what are the counter-narratives?]

---

## 🎯 Top 10 Insights Across All Talks

[Identify the 10 most important cross-cutting insights. These should be things that emerge from multiple talks, not just one speaker's opinion.]

1. **[Insight Title]**: [2-3 sentence explanation with supporting talks cited]
2. **[Insight Title]**: [2-3 sentence explanation with supporting talks cited]
3. [Continue to 10...]

---

## 📊 Major Themes

### Theme 1: [Theme Name]

**Summary**: [What is this theme about?]

**Key Points**:
- [Point from multiple talks]
- [Point from multiple talks]

**Supporting Talks**: 
- Talk #X ([Speaker]) - [how it addresses this theme]
- Talk #Y ([Speaker]) - [how it addresses this theme]

**Internal Tensions**: [Any disagreements within this theme?]

---

### Theme 2: [Theme Name]

[Repeat structure...]

---

### Theme 3: [Theme Name]

[Repeat structure...]

---

[Continue for 4-6 major themes]

---

## 🤝 Agreements & Disagreements

### Where Speakers Strongly Agree

| Topic | Consensus View | Supporting Talks |
|-------|---------------|------------------|
| [Topic] | [What they agree on] | Talks #X, #Y, #Z |
| [Topic] | [What they agree on] | Talks #A, #B, #C |

### Where Speakers Disagree

| Topic | Position A | Position B | Talks |
|-------|-----------|-----------|-------|
| [Topic] | [View 1] | [View 2] | #X vs #Y |
| [Topic] | [View 1] | [View 2] | #A vs #B |

### Unresolved Debates

[What questions does the conference leave open? Where is there genuine uncertainty?]

---

## 🔮 Predictions & Trends

### Near-term (6-12 months)
Based on the conference content, expect:
1. [Prediction] - Supporting evidence: [Talks]
2. [Prediction] - Supporting evidence: [Talks]

### Medium-term (1-2 years)
1. [Prediction] - Supporting evidence: [Talks]
2. [Prediction] - Supporting evidence: [Talks]

### Wild Cards
[What could change everything? What low-probability high-impact scenarios were mentioned?]

---

## 🎬 Must-Watch Recommendations

### The Essential 5 (If You Only Watch Five Talks)

1. **Talk #[X]: [Title]** by [Speaker]
   - *Why*: [Specific reason this is essential]
   
2. **Talk #[X]: [Title]** by [Speaker]
   - *Why*: [Specific reason this is essential]

[Continue to 5]

### By Interest Area

**For Enterprise AI Leaders** (Deploying AI at scale):
- Talk #[X] - [Why]
- Talk #[Y] - [Why]
- Talk #[Z] - [Why]

**For AI Tool Builders** (Building the next Cursor/Copilot):
- Talk #[X] - [Why]
- Talk #[Y] - [Why]
- Talk #[Z] - [Why]

**For Individual Developers** (Using AI tools daily):
- Talk #[X] - [Why]
- Talk #[Y] - [Why]
- Talk #[Z] - [Why]

**For the Research-Minded** (Understanding the frontier):
- Talk #[X] - [Why]
- Talk #[Y] - [Why]
- Talk #[Z] - [Why]

**For the Contrarian** (Talks that challenge conventional wisdom):
- Talk #[X] - [Why]
- Talk #[Y] - [Why]

---

## 💼 Actionable Takeaways

### For Engineering Teams

1. **[Action]**: [Rationale based on conference content]
2. **[Action]**: [Rationale based on conference content]
3. **[Action]**: [Rationale based on conference content]

### For Engineering Leaders

1. **[Action]**: [Rationale based on conference content]
2. **[Action]**: [Rationale based on conference content]
3. **[Action]**: [Rationale based on conference content]

### For AI Product Builders

1. **[Action]**: [Rationale based on conference content]
2. **[Action]**: [Rationale based on conference content]
3. **[Action]**: [Rationale based on conference content]

---

## 📈 State of AI Coding (Conference Consensus)

### What's Considered "Solved"
[What problems do speakers treat as largely addressed?]
- [Problem] - Evidence: [Talks]

### Active Frontiers
[Where is the main innovation/competition happening?]
- [Area] - Key players/approaches: [Details from talks]

### Open Challenges
[What remains unsolved? What are speakers still struggling with?]
- [Challenge] - Who's working on it: [Talks]

### The Next Big Thing
[What did speakers hint is coming that isn't here yet?]

---

## 🏷️ Conference Keyword Cloud

[List all unique search keywords from all summaries, grouped by category:]

**Companies/Products**: [list]
**Concepts/Techniques**: [list]
**People**: [list]
**Emerging Terms**: [list]

---

## Appendix: Talk Quick Reference

| # | Day | Speaker | Company | Core Thesis (one line) |
|---|-----|---------|---------|----------------------|
| 1 | 1 | [Name] | [Company] | [One-liner] |
| 2 | 1 | [Name] | [Company] | [One-liner] |
[Continue for all 35 talks]

---

*Meta-synthesis of 35 talks from AIE CODE 2025*
*Individual summaries available in output/summaries/*
```

---

## Quality Guidelines

### Executive Summary
- Should tell a coherent "story" of the conference
- Balance the dominant narrative with counter-narratives
- Be opinionated but evidence-based

### Theme Analysis
- Themes should emerge from multiple talks (not just one)
- Be honest about tensions and disagreements
- Don't force artificial connections

### Must-Watch Recommendations
- Be specific about WHY each talk is recommended
- Different audiences have different needs - curate accordingly
- Include at least one contrarian/surprising recommendation

### Actionable Takeaways
- Should be things someone can actually DO
- Grounded in specific conference content
- Avoid generic advice

### State of AI Coding
- Reflect actual conference consensus, not your own opinions
- Note where there's genuine disagreement
- Be honest about uncertainty

---

## Save Location

Save to: `output/summaries/00-META-SYNTHESIS.md`
