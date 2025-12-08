# Poolside: Full-Stack AI from Data Center to Model
**Speaker**: Jason Warner (CEO, Poolside) & Iso (Co-founder, via remote)
**Day**: 2 | **Talk #**: 16

---

## 🎯 Quick Read (TL;DR)

Jason Warner (former GitHub CTO) and co-founder Iso present Poolside's vision: build intelligence from scratch, vertically integrated from multi-gigawatt data centers in West Texas to proprietary models trained with reinforcement learning. The contrarian bet 2.5 years ago? That next-token prediction needed to be paired with RL to make the leap toward closing the gap with human intelligence.

Live demo: their Malibu Agent model converts an Ada codebase (the language running government satellites) to Rust—1,152 lines generated, tested, working. No OpenAI, no Anthropic—this is poolside's own model. The key context: they've been working in "high consequence code environments" for defense and government for the past year, where agents can't "go nuts" with access—permissions matter.

Coming early next year: public release via their API and Amazon Bedrock. With 40,000+ GB300s coming online, they're scaling to tasks running for hours, eventually days. The invitation: partner with Poolside on checkpoints and fine-tuning—they want to be "a fifth model" at frontier level for builders.

**Core Thesis**: To build truly capable AI for software development, you need vertical integration—own the compute, own the training (especially RL), own the model. "The world was built by intelligence. The world in the future is being built on top of intelligence."

**Top 3 Takeaways**:
1. Poolside bet on RL + LLMs 2.5 years ago when it was "the most contrarian opinion in the world"—now mainstream
2. Defense/government deployments require tight permission controls—agents can't just "go nuts" with access
3. 40,000+ GB300s coming online enables hour-long tasks now, day-long tasks coming—form factors will keep evolving

---

## 📋 Key Takeaways

### Main Arguments
- **Vertical Integration Is Required**: From data center campus (multi-gigawatt, West Texas, "shovels in ground like 90s/2000s") to training infrastructure to model to interface. Can't close gap with human intelligence using others' models.
- **RL + LLMs Was the Bet**: 2.5 years ago, believed next-token prediction was breakthrough but needed RL pairing. "First 18 months obsessing on reinforcement learning felt like one of the most contrarian opinions in the world."
- **High Consequence Code Environments**: Deployed in defense/government for past year. "I can't walk into half of these buildings. You can't give an agent access to these data sources and say 'go nuts.'" Permissions and controls critical.
- **The Model Is Poolside's**: Not using OpenAI or Anthropic. Malibu Agent is second-generation, trained from scratch using proprietary techniques.
- **Compute Unlocked**: 40,000+ GB300s coming online. This compute unlock enables scaling to longer horizon tasks—hours now, days in coming years.
- **"Awkward Teenage Years Ahead of AGI"**: The conference audience is bridging the gap between raw intelligence and valuable applications. Poolside wants to be "small humble part" of that.
- **Origin Story**: Jason tried to acquire Iso's company in 2017 for GitHub. Iso had working code completion on LSTMs before transformers. He said no. They stayed friends, founded Poolside in 2022 when "we saw the endgame."

### Announcements & Demos
- **Malibu Agent**: Second-generation model, live demo
- **Ada to Rust Conversion**: Government satellite codebase converted—1,152 lines of Rust generated, tested, working
- **VS Code Extension**: Interface into Poolside platform (also web interface, downloadable agent)
- **Public Release Timeline**: Early next year via Poolside API and Amazon Bedrock
- **Partnership Invitation**: Open to partnerships on checkpoints and fine-tuning—want to be alongside Qwen/Phi/Minimax as option for builders
- **Data Center Campus**: Multi-gigawatt facility being built in West Texas ("weird to be putting shovels in ground again")

### Technical Details
- **Ada Language**: "Very modern programming language that the government uses to run all the world's critical infrastructure." Anyone who raised hand "either has no hair or gray hair"
- **Live Diff View**: Built interface showing all changes as streams come through
- **Tool Calls**: Agent identified rusty_line package for arrow-key history, modified files, built, tested
- **Autonomous Testing**: Agent wrote bash scripts to test its own changes
- **Defense Sector Requirements**: Tight permission ratcheting—can't let agents roam freely in sensitive environments
- **Model Capabilities**: Not just coding—"emotionally intelligent, fun, great bedtime stories" (Jason's been sending wife love letters written by Poolside for 6 months)

---

## 💡 Notable Quotes

> "Poolside exists to close the gap between models and human intelligence. That's literally it."

> "We were based on the idea two and a half years ago that we thought next token prediction was an amazing technological breakthrough but it needed to be paired with reinforcement learning really to make that leap."

> "I can't walk into half of these buildings. You can't give an agent access to these data sources and just say, 'Hey, go nuts.'"

> "We're entering these kind of awkward teenage years ahead of AGI where everybody in this room who's building out incredible companies and applications is bridging this gap."

> "The world till date was built by intelligence. The world in the future is being built on top of intelligence."

---

## 🔮 Implications & Predictions

**For Developers**: 
A new frontier-level model option is coming early next year. If you're building in high-consequence environments (defense, government, infrastructure), Poolside has been validating in that space for a year. Their focus on permission controls may matter for enterprise deployments where "agent goes nuts" is not acceptable.

**For AI Tool Builders**: 
Poolside is inviting partnerships—access to checkpoints for fine-tuning and RL on top. They want to be the fifth option alongside OpenAI, Anthropic, and open source leaders. If vertical integration matters for your use case, this is worth watching.

**For Engineering Leaders**: 
The compute unlock (40,000+ GB300s) enables a shift from minute-scale to hour-scale to eventually day-scale agent tasks. Form factors will keep evolving. If you're in defense/government, Poolside has production deployments you can reference.

**Contrarian/Surprising Takes**: 
- Building data centers again "like 90s/2000s"—physical infrastructure investment required for AI scale
- RL + LLMs was "most contrarian opinion" 2.5 years ago—now mainstream validation
- "I've been sending love letters written by Poolside for 6 months"—model emotional intelligence as differentiator
- Defense sector as proving ground—permission-controlled agents validated before general release

---

## 🔗 Cross-Talk Connections

- **Relates to**: Talk #08 Day 2 (Applied Compute) - Both emphasize RL as key to model capability; Applied on efficiency, Poolside on scaling
- **Relates to**: Talk #09 Day 2 (Prime Intellect) - Both building RL training infrastructure; Prime Intellect open source approach vs. Poolside vertical integration
- **Agrees with**: Talk #05 Day 2 (Lee Robinson, Cursor) - Both on custom model training for specific harnesses; Cursor for IDE, Poolside for broader software development
- **Related themes**: Hour+ agent tasks (mentioned throughout conference), vertical integration, enterprise deployment requirements

---

## 🏷️ Search Keywords

`Jason Warner` `Poolside` `Iso` `Malibu Agent` `reinforcement learning` `RL` `vertical integration` `defense` `government` `Ada` `Rust` `GitHub` `data center` `GB300` `Bedrock` `high consequence code`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
