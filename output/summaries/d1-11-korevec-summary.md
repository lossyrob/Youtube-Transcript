# Proactive Agents: The Future of Async Coding Assistants
**Speaker**: Kat Korevec (Google Labs)
**Day**: 1 | **Talk #**: 11

---

## 🎯 Quick Read (TL;DR)

Google Labs Director of Product Kat Korevec introduces **Project Jules**, a proactive asynchronous autonomous coding agent designed to reduce the mental load developers carry when working with AI tools. Using the analogy of a husband who agrees to do dishes but needs constant reminding, she explains that even when AI handles tasks, developers still carry the cognitive burden of monitoring, following up, and keeping track. The solution: agents that understand context, anticipate needs, and act without being asked—like a Nest thermostat that learns your habits. Jules operates at three proactivity levels: L1 (detecting and auto-fixing issues like missing tests), L2 (contextual awareness of your project and working style), and L3 (system-wide awareness across multiple agents understanding consequences). Coming in December: memory, critic agents for code review, Playwright-based verification with screenshots, todo-bot that proactively works on your TODO comments, and a proactive mode that indexes your codebase and suggests improvements ranked by confidence.

**Core Thesis**: The future of AI coding tools isn't reactive assistants waiting for prompts—it's proactive agents that observe, personalize, and intervene at the right moment without breaking your flow, reducing the mental load developers carry.

**Top 3 Takeaways**:
1. Task switching costs developers up to 40% of productive time; async agents that need babysitting don't solve this
2. Jules operates at 3 proactivity levels: collaborative (auto-fixing issues), contextually aware (learning your patterns), and system-aware (multiple agents with consequence understanding)
3. December release includes memory, critic agent, Playwright verification, todo-bot, and proactive mode that indexes codebase and suggests improvements by confidence level

---

## 📋 Key Takeaways

### Main Arguments
- **Async agents today still carry mental load**: Even when agents handle work, developers are still tracking whether tasks are done, following up, and monitoring—the cognitive burden remains
- **Humans are serial processors**: We think we multitask but actually execute tasks sequentially; switching between them costs up to 40% of productive time (backed by research)
- **The "16 terminals" DevX is not the future**: The viral image of someone managing 16 Claude tasks on 3 monitors is exactly the wrong direction—we shouldn't manage agents, we should code
- **Trust is the unlock**: When you trust an agent to know what's missing and fill gaps, you can focus on what matters; agents need to "do the dishes without being asked"
- **Proactive systems already exist**: Google Nest learns your habits and manages climate control; your body anticipates falls and reacts before conscious thought—AI proactivity isn't futuristic, it's familiar
- **Four ingredients for proactive systems**: Observation (understanding code changes/patterns), Personalization (learning how you work), Timeliness (not too early to interrupt, not too late), and Seamless integration (terminal, IDE, repository—not separate apps)
- **Level 3 is about alignment, not autonomy**: Multiple agents (Jules for code, Stitch for design, Insights for data) collaborating with collective intelligence, with humans observing, refining, and redirecting

### Announcements & Demos
- **Jules proactive mode (December 2025)**: Indexes entire codebase, finds TODOs and best practices, shows confidence levels (high/medium/low) for suggested improvements
- **Memory feature**: Jules writes its own memories about your project that you can edit; builds context and knowledge as you work together
- **Critic agent**: Works adversarially with Jules to ensure code quality; performs full code review
- **Playwright verification**: Jules writes Playwright scripts, takes screenshots, puts them in trajectory for validation
- **TODO bot**: Scans repository for TODO comments and proactively works on them with context
- **Best practices suggestions**: Jules understands and suggests best practices
- **Environment agent**: Used internally for evals, being extended externally to understand and set up your environments
- **Just-in-time context ("Jules cheat sheet")**: When stuck on something specific, Jules can reference a cheat sheet instead of asking you
- **Live demo walkthrough**: Showed Jules indexing ADK Python repository, finding TODOs and best practices, showing confidence signals (green=high, purple=medium, yellow=low), ability to drill into code, see rationale, and manage suggested tasks

### Technical Details
- **Proactivity Level 1 (Collaboration)**: Detects missing tests, unused dependencies, unsafe patterns; auto-fixes while doing other tasks; "attentive sous chef keeping kitchen clean"
- **Proactivity Level 2 (Contextual awareness)**: Observes how you work, learns your code patterns (backend engineer needing React help, designer needing database schema); understands frameworks and deployment style; "kitchen manager anticipating what you need next"
- **Proactivity Level 3 (System awareness)**: Understands not just context but consequence—how choices affect users, performance, outcomes; multiple agents working together:
  - **Jules**: Code agent (what's breaking)
  - **Stitch**: Design agent (user interactions)
  - **Insights**: Data agent (analytics, telemetry, conversion rates)
- **Collective intelligence**: Agents can propose improvements across boundaries—performance fixes for UX, design changes to prevent regressions, organized by live data
- **Human-in-the-loop**: Observe what agents do, refine when needed, redirect when misdirected

---

## 💡 Notable Quotes

> "God forbid that is the DevX of the future. I don't want to manage work. I don't want to manage my agents. I want to be a coder. I want to build."

> "We need collaborators in our system that we can trust. Agents that really understand context, can anticipate our needs, and they know really when to step in."

> "Essentially, we want Jules to do the dishes without being asked."

> "The patterns that we rely on today—Git, your IDEs, even the code, how we think about the code itself—might not exist a year from now, might not exist six months from now. And that's the exciting part."

> "Level three isn't really about autonomy anymore. It's actually about alignment to your project—agents and humans collaborating together across the full life cycle of your project."

---

## 🔮 Implications & Predictions

**For Developers**: 
Expect coding tools to evolve from reactive (autocomplete when typing) to proactive (fixing issues before you notice). The "mental load" of managing AI tools is the new friction point—tools that eliminate this will win. Your TODOs in code may actually get addressed by agents indexing your codebase.

**For AI Tool Builders**: 
The competitive frontier is shifting from raw capability to proactive intelligence. Four key ingredients: observation, personalization, timeliness, and seamless integration. Building confidence signals (high/medium/low) helps users trust and verify agent suggestions. Multi-agent architectures with specialized roles (code, design, data) coordinating together is the L3 vision.

**For Engineering Leaders**: 
The "16 terminals managing 16 agents" model is not sustainable. Invest in tools that reduce rather than add cognitive load. Consider how proactive agents might change workflows—TODO management, code review, environment setup could all become background processes. The future may involve less direct coding and more observing/redirecting agent work.

**Contrarian/Surprising Takes**: 
- Current async agents aren't actually freeing developers—they're just shifting the burden to monitoring
- "Proactive AI" isn't futuristic sci-fi; it's already in your home (Nest thermostat) and body (autonomic reflexes)
- Git, IDEs, and even "how we think about code itself" might not exist in six months—a strikingly bold prediction from Google
- The dishwasher analogy reframes the problem: delegation without mental load reduction isn't true delegation

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #02 (Katelyn Lesse, Anthropic) - Both emphasize context management as critical to agent effectiveness; Anthropic's MCP + skills aligns with Jules' four proactivity ingredients
- **Agrees with**: Talk #03 (Michele Catasta, Replit) - Both envision autonomous agents where users observe/redirect rather than write code directly; similar "Waymo-style" autonomy vision
- **Extends**: Talk #08 (Yegor Denisov-Blanch, Stanford) - Denisov-Blanch warns about productivity measurement; Jules' confidence levels (high/medium/low) could help developers know which suggestions are reliable
- **Contrasts with**: Talk #05 (Steve Yegge & Gene Kim) - Yegge/Kim celebrate leaders building apps in 5 days; Korevec cautions about managing agents becoming its own burden
- **Related themes**: Async workflows, mental load, multi-agent systems, developer experience, context engineering

---

## 🏷️ Search Keywords

`Kat-Korevec` `Google-Labs` `Jules` `Project-Jules` `proactive-agents` `async-agents` `mental-load` `developer-experience` `DevX` `multi-agent` `Stitch` `Insights` `memory` `critic-agent` `Playwright` `TODO-bot` `context-engineering` `autonomy-levels`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
