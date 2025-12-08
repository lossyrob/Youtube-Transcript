# Building Powerful Agentic Systems with Claude
**Speaker**: Katelyn Lesse (Anthropic - Head of Claude Developer Platform)
**Day**: 1 | **Talk #**: 02

*Source: Assembled from transcript files 00, 01, 02 due to timestamp fragmentation*

---

## 🎯 Quick Read (TL;DR)

Katelyn Lesse presented Anthropic's platform strategy for enabling developers to build powerful agentic systems using Claude. The talk centered on three pillars: harnessing Claude's capabilities (extended thinking, tool use), managing context windows effectively, and giving Claude access to a computer to work autonomously. She revealed that combining memory tools with context editing yielded a **39% performance improvement** in internal evaluations. The talk announced new infrastructure including Claude Code on web/mobile, a code execution API tool, and "agent skills" - bundled scripts and resources Claude can invoke autonomously. The message was clear: the future of agents is letting models work autonomously in sandboxed environments with proper domain expertise.

**Core Thesis**: Maximize agent performance by harnessing Claude's trained capabilities, actively managing context windows, and providing Claude with compute infrastructure to run code autonomously.

**Top 3 Takeaways**:
1. Context management is critical - memory + context editing combined delivered 39% performance gain over benchmarks
2. MCP + Agent Skills form a powerful combination: MCP provides tools/context access, skills provide domain expertise to use them effectively
3. Anthropic is investing heavily in agent infrastructure (secure sandboxes, container orchestration, session persistence) to let Claude work autonomously

---

## 📋 Key Takeaways

### Main Arguments
- **Raise the ceiling of intelligence**: Anthropic's platform philosophy centers on helping developers who are "always trying to be on the frontier" get the best possible outcomes from Claude
- **Three pillars of platform evolution**: (1) Harness capabilities via API features, (2) Manage context windows effectively, (3) Give Claude a computer and let it work
- **Context window optimization is paramount**: "Keeping the right context at the right time in the window is one of the most important things you can do to maximize performance"
- **The future is autonomous work in sandboxes**: Rather than debating agent harness design, just give Claude the ability to write AND run code - it can accomplish anything with that runway
- **Skills + MCP complement each other**: MCP provides tool access and context; skills provide the expertise to use them correctly (e.g., design system patterns for building landing pages)

### Announcements & Demos
- **Claude Code on Web/Mobile**: Launched recently - required solving secure sandboxed environments, container orchestration at scale, and session persistence for async workflows
- **Code Execution API Tool**: Released API feature allowing Claude to write and run code in secure sandboxed environments on Anthropic's infrastructure
- **Agent Skills**: New feature - folders of scripts, instructions, and resources that Claude can autonomously pull into context and execute within its sandbox
- **Million Token Context Windows**: Available for some models, combined with context editing tools for maximum performance
- **Hiring**: Anthropic is actively hiring across the Claude developer platform team (product, design, DevRel)

### Technical Details
- **Extended Thinking**: API feature allowing budget-based thinking time allocation - Claude's performance scales with reasoning time for complex tasks
- **Tool Use Reliability**: Claude is trained to reliably call tools and pass correct arguments; Claude Code uses "many, many, many tools" for file operations
- **Memory Tool (First Iteration)**: Client-side file system approach - Claude stores information outside the window and retrieves it when relevant (e.g., codebase patterns, git workflow preferences)
- **Context Editing**: Clears old tool results from the window - tool results from past calls are large and often not relevant to current responses
- **39% Performance Gain**: Internal evals showed memory tool + context editing combined delivered 39% improvement over benchmark
- **Claude Context Self-Awareness**: Anthropic is teaching Claude to understand how much room remains in its context window and respond accordingly

---

## 💡 Notable Quotes

> "Keeping the right context at the right time in the window is one of the most important things that you can do to maximize performance."

> "We found that if we combined our memory tool with context editing, we saw a 39% bump in performance over the benchmark on our own internal evals."

> "At the end of the day, Claude has access to writing code. And if Claude has access to running that same code, it can accomplish anything."

> "We really think the future of agents is letting the model work pretty autonomously within a sandbox environment and we're giving you the infrastructure to be able to do that."

---

## 🔮 Implications & Predictions

**For Developers**: 
Invest in context management - it's not glamorous but delivers massive performance gains. Use MCP for tool access and start bundling domain-specific skills/scripts that Claude can invoke. Don't over-engineer agent harnesses; focus on giving Claude good tools and letting it work.

**For AI Tool Builders**: 
The infrastructure play is real - secure sandboxes, container orchestration, and session persistence are becoming table stakes. Consider how skills/expertise bundles could differentiate your agent product.

**For Engineering Leaders**: 
Claude Code's web/mobile launch signals that agentic coding is moving beyond developer machines to always-on cloud workflows. Prepare for async agent work patterns where tasks run for extended periods.

**Contrarian/Surprising Takes**: 
The "just give Claude a computer" philosophy cuts against the current discourse about optimal agent harness design. Anthropic's position: stop debating scaffolding weight - if Claude can write and run code, it can accomplish anything.

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #00 (Opening Performance) - Both emphasize the paradigm shift in human-AI collaboration
- **Preview of**: Day 2 Talk by Barry Zhang & Mahesh Murag - Lesse explicitly recommends their deeper dive on Agent Skills
- **Related themes**: MCP adoption, context engineering, autonomous agent architectures

---

## 🏷️ Search Keywords

`Anthropic` `Claude` `Claude-Code` `MCP` `model-context-protocol` `agent-skills` `context-management` `context-window` `memory` `code-execution` `sandbox` `tool-use` `extended-thinking` `Katelyn-Lesse` `developer-platform`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
