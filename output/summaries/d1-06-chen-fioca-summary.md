# Building Coding Agents with Codex: Harness as the New Abstraction Layer
**Speaker**: Bill Chen & Brian Fioca (OpenAI - Applied AI Startups Team)
**Day**: 1 | **Talk #**: 06

---

## 🎯 Quick Read (TL;DR)

Bill Chen and Brian Fioca from OpenAI's Applied AI Startups team presented a deep dive into building coding agents, with a focus on their Codex product. The talk deconstructed agents into three components (UI, model, harness) and argued that the **harness** - the interface layer between model and user - is where the real complexity lives. They revealed that fitting models into harnesses requires understanding both "intelligence" (what models can do) and "habits" (how they were trained to do it), warning that overprompting models with instructions they weren't trained for degrades performance. The key insight: OpenAI built Codex as both model AND harness together because knowing training habits while building enables optimal performance. They positioned Codex as essentially a "computer use agent for the terminal" - if tasks can be expressed as CLI commands and files, Codex can handle them. The talk concluded with patterns for using Codex as an SDK inside your own agents, enabling tools that can write their own tools.

**Core Thesis**: The harness (prompt + tool wrapper around models) is the hardest part of building coding agents; use Codex's pre-built harness as your abstraction layer so you can focus on product differentiation.

**Top 3 Takeaways**:
1. Models have "intelligence" AND "habits" - overprompting with instructions misaligned to training habits causes performance degradation
2. Codex is now available as an SDK/library you can embed in your own agents, enabling "tools that make tools"
3. The harness abstraction layer lets you stop optimizing prompts with every model upgrade and focus on product differentiation

---

## 📋 Key Takeaways

### Main Arguments
- **Agents are simple: UI + Model + Harness**: Bill emphasized people overcomplicate agents - they're just three parts working together, with the harness being the most interesting/complex
- **Harness is the hard part**: The harness manages model interaction, context windows, compaction, tool calls, sandboxing, MCP support, image handling - "way harder than you think"
- **Intelligence + Habits framework**: Models have raw capabilities (intelligence) AND learned behaviors from training (habits). GPT-5 was trained to plan, gather context, and think before coding - prompting it to "examine every file" caused slowdowns because it was being overly thorough
- **Overprompting hurts performance**: When users tried applying prompts from other models to GPT-5, it degraded performance. The model itself told Brian: "You're telling me to go look at everything and I don't really need to. That's what's taking forever."
- **Codex = computer use agent for terminal**: Anything expressible as CLI commands and files, Codex can do - photo organization, CSV analysis, not just coding
- **Harness as abstraction layer**: By using Codex's harness, you stop worrying about prompt/tool optimization per model upgrade and focus on product differentiation
- **Not a "wrapper" dismissal**: Brian pushed back on the "wrapper" criticism - focusing on product differentiation IS where the value lies

### Announcements & Demos
- **GPT-5.1 Codex Max launch**: Released "yesterday" (relative to talk) - handles compaction and context window management out of the box
- **Codex SDK/TypeScript library**: Can be called programmatically in Python exec, GitHub Actions for PR merge conflicts, integrated with Agents SDK
- **Codex CLI open source**: Full harness implementation publicly available for forking and study
- **Usage stats**: Codex is now the fastest growing model in usage, serving "dozens of trillions of tokens per week" - doubled since DevDay
- **Zed integration**: Zed wrapped Codex inside their IDE, delegating agent complexity to OpenAI while focusing on editor experience
- **GitHub partnership**: GitHub uses Codex SDK for direct integration
- **Cursor alignment**: Cursor aligned their tools "in distribution with how the model is trained" using the open-source Codex CLI as reference

### Technical Details
- **Harness complexity areas**: Parallel tool calls, thread merging, sandboxing, prompt forwarding, permissions, port management, compaction triggers, reinjection timing, cache optimization, MCP plumbing, image resolution handling
- **Codex Max**: Does compaction and context window management out-of-the-box so developers don't have to
- **API evolution**: Mentioned completions → responses → future APIs as ongoing change developers must handle
- **MCP support**: Built into Codex harness; can add MCP connectors back to your product
- **Self-improving agents**: Mentioned building a kanban board for DevDay that can "fix its own bugs"
- **Future direction**: Models will work on "much longer horizon tasks unsupervised," handle "sprawling codebases," "non-standard libraries," "closed source environments," and match "existing templates and practices"

---

## 💡 Notable Quotes

> "If you don't instruct the model in ways that it's familiar with, you can have problems."

> "You're telling me to go look at everything and I don't really need to. So that's what's taking forever." - GPT-5 explaining its own performance issues

> "We started with chatbots that you can talk to. Then we gave the chatbots tools to use and then now you can give a tool to your chatbot that can make other tools that it doesn't have."

> "I trust these models now to do some way harder work than I would have six months ago. And that's going to keep increasing."

---

## 🔮 Implications & Predictions

**For Developers**: 
Stop fighting model updates by building raw harnesses. Use Codex (or similar) as your abstraction layer. Study the open-source Codex CLI to understand how OpenAI aligns prompts to model training. Ask the model directly when debugging performance issues - it can explain its own behavior.

**For AI Tool Builders**: 
The harness layer is being commoditized by model providers. If you're building a coding agent startup, your differentiation is NOT in the harness - it's in the product layer above. Consider Codex SDK integration rather than building harnesses from scratch. The "tools that make tools" paradigm opens enterprise customization at runtime.

**For Engineering Leaders**: 
The trust ceiling is rising rapidly - models can handle harder tasks unsupervised than 6 months ago. Prepare for agents working on longer-horizon tasks. The Zed/Cursor approach (leveraging OpenAI's harness work) lets teams focus on differentiation rather than AI plumbing.

**Contrarian/Surprising Takes**: 
The "wrapper" discourse is too reductive - building on top of harnesses IS the right architectural choice for most products. Also surprising: the model literally told Brian how to fix performance issues when asked directly ("What can I do differently?").

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #02 (Katelyn Lesse, Anthropic) - Both emphasize context window management complexity and the value of letting models work autonomously; both building "computer use" agents
- **Agrees with**: Talk #03 (Michele Catasta, Replit) - Both building agents for autonomous coding; Replit's "Waymo-style" autonomy parallels Codex's unsupervised longer-horizon vision
- **Agrees with**: Talk #04 (Lisa Orr, Zapier) - Both see AI as handling tasks that "professional services teams used to have to do"
- **Agrees with**: Talk #05 (Steve Yegge & Gene Kim) - Trust increasing with model capability aligns with Yegge's "trust grows with usage" observation
- **Related themes**: Harness architecture, model-harness co-design, SDK/API patterns, autonomous coding

---

## 🏷️ Search Keywords

`OpenAI` `Codex` `coding-agent` `harness` `GPT-5` `GPT-5.1` `Bill-Chen` `Brian-Fioca` `SDK` `abstraction-layer` `context-window` `compaction` `CLI` `tool-use` `MCP` `model-habits` `overprompting`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
