# Amp: An Opinionated Frontier Coding Agent
**Speaker**: Beyang Liu (Co-founder & CTO, Sourcegraph/Amp)
**Day**: 2 | **Talk #**: 13

---

## 🎯 Quick Read (TL;DR)

Beyang Liu presents Amp's opinionated architecture for coding agents, built around a counterintuitive insight: model selection UI is the wrong abstraction. Instead of letting users pick from n models with a lightly-customized harness, Amp builds deeply specialized sub-agents—Finder (search), Oracle (reasoning), Librarian (external docs), Kraken (large-scale refactors via codemods).

The "doom loop" problem (agent retries same thing endlessly because it didn't gather enough context vs. context exhaustion where it reads too much) is solved via sub-agents. Each sub-agent gets its own context window, does its work, returns only relevant results. The main agent stays fast while sub-agents handle deep tasks.

Key architectural decisions: only two top-level agents (smart and rush) rather than model selectors, custom terminal UI framework taking advantage of modern capabilities, thread sharing for team learning ("here's a cool prompting technique"), and even ads in terminal to sponsor free rush inference for students. The Oracle sub-agent is "magical"—tag it for tricky problems, come back in a few minutes, 4/5 times it just works.

**Core Thesis**: Agent architecture should be sub-agent-oriented, not model-selector-oriented—deeply specialized sub-agents with their own context windows outperform generic model choice with light customization.

**Top 3 Takeaways**:
1. Sub-agents solve the context window crisis—fork context for subtasks, return only results, keep main agent fast
2. Model selectors are wrong abstraction—Amp uses two top-level agents (smart/rush) plus specialized sub-agents (Finder, Oracle, Librarian, Kraken)
3. The "Oracle" sub-agent for reasoning is magical—tag tricky problems, wait a few minutes, 4/5 times it finds the answer

---

## 📋 Key Takeaways

### Main Arguments
- **Agent = For Loop + Tools + Model**: The levers are model choice, tool descriptions, and how model iterates with tools. Limited but powerful like if statements and for loops.
- **MCP Is Great But Not For Core Tools**: MCP server creators don't know your agent's goals—can't tune tool descriptions for your feedback loops. Too many tools cause context confusion.
- **Context Exhaustion vs. Doom Loop**: Agents either read too much (exhaust context before editing) or read too little (doom loop—retry same thing forever). Balance is hard.
- **Sub-Agents Solve Context Crisis**: Like subroutine calls in programming—factor subtask context into separate window, return only relevant results. Extends and conserves main agent context.
- **Specialized Sub-Agents > Generic Tweaks**: Amp's core sub-agents (Finder, Oracle, Librarian, Kraken) are deeply specialized, not just light system prompt changes.
- **Two Top-Level Agents, Not Model Selector**: "Smart" (complex tasks, access to sub-agents, slower) and "Rush" (tight in-loop editing, fast). Picks meaningful points on intelligence/speed frontier.
- **Paradox of Choice**: n models × 1 lightly-customized harness = never optimizing for what any model can do. Cognitive burden on users.
- **Editor → Readitor**: The editor's main purpose is now reviewing agent output, not manual editing. Custom diff viewer optimized for agentic output.
- **Team Learning Through Thread Sharing**: Share prompting techniques, debug stuck sessions together. "Here's a cool technique I discovered."
- **Economics Matter**: Students aren't using agents because of cost. Amp ships terminal ads to sponsor rush inference.

### Announcements & Demos
- **Gemini 3 Integration**: Switched smart model two days ago to Gemini 3—"absolutely loving it" after week of optimization testing
- **Terminal UI Framework**: Built from scratch by Ghosty contributor to take advantage of modern terminal capabilities
- **VS Code Extension**: Installs into VS Code, Cursor, Windsurf, etc.—no fork needed
- **Custom Diff Viewer**: Select arbitrary commit ranges, editable diffs, full code navigation, "tour of the change" feature
- **Ads in Terminal**: Subtle developer tool ads sponsoring free rush inference for more accessible agent use
- **Builder Community**: Led by Ryan Carson (former Treehouse founder), regular interviews, in-person events

### Technical Details
- **Finder Sub-Agent**: Codebase search using small/quick model with limited tool set optimized for context discovery
- **Oracle Sub-Agent**: Reasoning sub-agent for debugging tricky problems—invoked explicitly, takes minutes but finds answers ~80% of time
- **Librarian Sub-Agent**: Fetches context from external libraries and frameworks
- **Kraken Sub-Agent**: Experimental—writes codemods for large-scale refactors instead of editing files one-by-one
- **Graceful Terminal Degradation**: Full rendering on modern terminals, falls back gracefully on basic terminals (Mac OS default, VS Code integrated)
- **Diff Color Mixing**: Terminal can mix green with background color for nicer diff display
- **Emacs/Neovim/JetBrains Integration**: CLI connects to editors for diagnostics collection
- **Thread Sharing**: See team's code changes over time, poke into specific threads to learn techniques

---

## 💡 Notable Quotes

> "We're trying to lean into that sense of awe and absurdity that I think we all experience right now living in this weird world where agents are writing an increasingly large amount of our code."

> "I think of my editor now more as a 'readitor' more than anything else because I don't think you're really editing all that much in your editor anymore."

> "The problem with choice is that there's also a paradox of choice. The more choices that you have, the more cognitive burden it is to choose from these different models."

> "I just tag the Oracle. So like invoke the oracle, think really hard. I go alt-tab, check my email for a bit, and sometimes it takes a few minutes because it's thinking really deeply, but I think four out of five times it just magically finds the underlying issue."

---

## 🔮 Implications & Predictions

**For Developers**: 
Your main bottleneck is likely code review of agent output, not code generation. Invest in workflows for reviewing diffs efficiently. Consider whether model selection UI is actually helping you or adding cognitive overhead. The Oracle pattern—explicit deep reasoning sub-agent—is worth trying.

**For AI Tool Builders**: 
Reconsider the model selector paradigm. Users want intelligence/speed tradeoffs, not model choice. Sub-agents with specialized tool sets outperform generic model-agnostic harnesses. Invest in terminal capabilities—modern terminals can do much more than most tools leverage.

**For Engineering Leaders**: 
Thread sharing for team learning is powerful—prompt techniques spread virally when visible. Economics barrier is real—students and side-project developers are blocked by inference costs. The "readitor" framing—teams spending most time reviewing agent output—suggests investing in review tooling.

**Contrarian/Surprising Takes**: 
- Model selectors are the wrong abstraction—two fixed agents (smart/rush) beats n-model choice
- MCP is valuable but shouldn't be core tool strategy—creators can't tune for your agent's feedback loops
- Terminal ads can work if subtle enough—solving accessibility through sponsored inference
- Reasoning models work best as sub-agents, not main agent drivers
- Half the battle reviewing large changes is knowing where to start—guided tours are product feature

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #04 Day 2 (Dex Horthy) - Both emphasize sub-agents for context control, not role anthropomorphization
- **Extends**: Talk #05 Day 2 (Lee Robinson, Cursor) - Both on optimizing for developer flow; Lee on speed via model training, Beyang on speed via agent architecture
- **Agrees with**: Talk #03 Day 2 (Anthropic) - Both focus on specialized capabilities (skills vs. sub-agents) rather than generic model switching
- **Related themes**: Context management (Talk #02, #04), code review becoming bottleneck (Talk #04 Dex), agent architecture decisions
- **Contrasts with**: Generic MCP-heavy approaches—Amp argues for custom core tools over protocol-based extensibility

---

## 🏷️ Search Keywords

`Beyang Liu` `Sourcegraph` `Amp` `coding agent` `sub-agents` `Oracle` `Finder` `Kraken` `Librarian` `context window` `model selector` `terminal UI` `Gemini 3` `thread sharing` `code review` `diff viewer` `agent architecture`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
