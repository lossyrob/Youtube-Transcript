---
description: Prompt template for summarizing individual AIE CODE 2025 conference talks
---

# Talk Summary Prompt Template

You are summarizing a talk from the **AI Engineer Code Summit 2025 (AIE CODE 2025)**, a two-day conference featuring talks from leaders at Anthropic, OpenAI, Google DeepMind, Cursor, Replit, and many other companies shaping the AI coding landscape.

## Your Inputs

1. **Transcript**: The full transcript of a single talk (provided below or in attached file)
2. **Summary Index**: Brief one-liners from previously summarized talks (for cross-referencing)

## Output Requirements

Create a comprehensive summary following this EXACT structure:

---

```markdown
# [Talk Title - derive from content]
**Speaker**: [Name] ([Company/Affiliation])
**Day**: [1|2] | **Talk #**: [XX]

---

## 🎯 Quick Read (TL;DR)

[Write ≤200 words capturing the essence of this talk. What is it about? Why does it matter? What should someone remember? This should be skimmable in 30 seconds.]

**Core Thesis**: [1-2 sentence central argument or main point]

**Top 3 Takeaways**:
1. [Most important insight, claim, or announcement]
2. [Second most important]
3. [Third most important]

---

## 📋 Key Takeaways

### Main Arguments
- [Detailed point with context and reasoning]
- [Another key argument - be specific, include evidence/examples mentioned]
- [Continue for all major points]

### Announcements & Demos
- [Any product launches, new features, or capabilities revealed]
- [Demos shown and what they demonstrated]
- [If none, write "No major announcements in this talk"]

### Technical Details
- [Specific architectures, techniques, or methodologies discussed]
- [Benchmarks, metrics, or data points shared]
- [Tools, frameworks, or systems mentioned]
- [Include actual numbers and specifics, not vague descriptions]

---

## 💡 Notable Quotes

> "[Exact memorable quote from the talk - something shareable]"

> "[Another notable quote if available]"

[Include 2-4 quotes that capture the speaker's perspective or memorable moments]

---

## 🔮 Implications & Predictions

**For Developers**: 
[What does this talk mean for individual developers? What should they do differently?]

**For AI Tool Builders**: 
[What does this mean for companies building AI coding tools? Opportunities or threats?]

**For Engineering Leaders**: 
[What should engineering managers and CTOs take away?]

**Contrarian/Surprising Takes**: 
[Did the speaker say anything that goes against conventional wisdom? Any surprising positions?]

---

## 🔗 Cross-Talk Connections

[Reference the Summary Index to identify connections. Use format below:]

- **Agrees with**: Talk #[X] ([Speaker]) - [brief description of the agreement]
- **Contrasts with**: Talk #[Y] ([Speaker]) - [brief description of the contrast]
- **Extends**: Talk #[Z] ([Speaker]) - [how this talk builds on that one]
- **Related themes**: [List talks covering similar topics]

[If this is an early talk and few summaries exist, note: "Limited cross-references available - early in sequence"]

---

## 🏷️ Search Keywords

`[keyword1]` `[keyword2]` `[keyword3]` `[keyword4]` `[keyword5]` `[keyword6]` `[keyword7]` `[keyword8]`

[Include: speaker name, company, main topics, technologies mentioned, key concepts. These enable chat-based discovery like "Which talks discuss context engineering?"]

---

*Summary generated as part of AIE CODE 2025 phased analysis*
```

---

## Quality Guidelines

### Quick Read Section
- MUST be ≤200 words
- Should be comprehensible without reading rest of summary  
- Focus on "what" and "why it matters"
- Avoid jargon without explanation

### Key Takeaways Section
- Be SPECIFIC - include actual numbers, tool names, concrete claims
- Distinguish between opinions and facts
- Note uncertainty if transcript is unclear

### Notable Quotes
- Use exact words from transcript (clean up obvious speech artifacts like "um", "uh")
- Choose quotes that are shareable or capture key insights
- Attribute properly if multiple speakers

### Cross-Talk Connections
- Only reference talks from the Summary Index
- Be accurate about agreements/disagreements - don't manufacture connections
- If no clear connections, say so

### Search Keywords
- Include obvious terms (speaker name, company)
- Include topic-specific terms that someone might search for
- Include acronyms AND full forms (e.g., `RAG` `retrieval-augmented-generation`)

---

## Transcript Handling Notes

- Transcripts are auto-generated and may have artifacts
- Speaker names may be inconsistent - derive correct names from context
- Some talks are brief (intros, closings) - scale summary appropriately
- If content is primarily ceremonial (opening performance, etc.), note this and keep summary brief

---

## Save Location

Save output to: `output/summaries/d[1|2]-[XX]-[speaker-lastname]-summary.md`

Example: `output/summaries/d1-02-lesse-summary.md`

After saving, update the Summary Index with a one-liner for this talk.
