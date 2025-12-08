# AI for 9,000 Engineers: Bloomberg's Practical Deployment Path
**Speaker**: Lei Zhang (Head of Technology Infrastructure, Bloomberg)
**Day**: 1 | **Talk #**: 13

---

## 🎯 Quick Read (TL;DR)

Lei Zhang shares Bloomberg's pragmatic approach to deploying AI coding tools across their 9,000-engineer organization. Rather than chasing hype, Bloomberg focused on practical use cases where AI delivers clear ROI: **uplift agents** for automated patching and codebase evolution, **incident response agents** for faster troubleshooting, and systematic organizational enablement through training programs and cross-functional communities.

Key insight: AI coding tools showed strong productivity gains for greenfield work (proof of concepts, test generation, scripts), but those gains dropped quickly for complex legacy work. Bloomberg's response was to target AI at the "work developers don't want to do"—migrations, maintenance, patching—rather than core feature development.

The talk introduces Bloomberg's **"paved path"** approach: provide a golden path that makes the right thing easy and wrong things hard. This includes an AI gateway for model selection, MCP hub for tool discovery, and a PaaS for MCP server deployment—all ensuring 9,000 engineers can innovate while maintaining stability and avoiding duplication.

**Core Thesis**: Deploy AI for coding by targeting unglamorous work (patching, incidents, migrations), building a paved infrastructure path, and leveraging organizational programs (training, guilds) to drive adoption—not by chasing productivity gains in core development.

**Top 3 Takeaways**:
1. AI productivity gains dropped quickly beyond greenfield work—Bloomberg pivoted to targeting maintenance/migration work
2. "Paved path" infrastructure: AI gateway + MCP hub + PaaS enables 9,000 engineers to build agents safely without chaos
3. New hire training programs are powerful change agents—graduates challenge senior engineers to adopt new practices

---

## 📋 Key Takeaways

### Main Arguments
- **Scale creates unique challenges**: Bloomberg manages one of the largest private networks and JavaScript codebases in the world; system complexity is "at least polynomial as a function of line of code." Deploying AI carelessly into hundreds of millions of lines of code is risky.
- **Greenfield gains don't transfer**: Developer surveys showed strong productivity for proof of concepts, test generation, and one-time scripts, but "measurements dropped pretty quickly when you go beyond greenfield type of thing."
- **Target the unglamorous work**: Instead of using AI for core feature development, Bloomberg focuses on work developers don't prefer—migrations, patching, maintenance. This delivers clearer ROI without the quality concerns.
- **Uplift agents for codebase evolution**: Automated agents scan the codebase, identify where patches apply, generate PRs with fixes AND explanations of why the patch was needed. Superior to their previous regex-based refactoring tools.
- **Incident response agents are unbiased**: AI can traverse codebases, telemetry, feature flags, and call traces "in an unbiased lens"—humans bring bias ("it must be this") that slows troubleshooting.
- **Prevent organizational chaos**: With 10+ teams wanting to build PR review bots and 20+ teams wanting incident response agents, Bloomberg needed governance to prevent duplication and ensure quality.
- **Paved path philosophy**: "Make the right thing extremely easy to do and make sure the wrong thing is ridiculously hard to do." This balances innovation freedom with production quality control.
- **Training as change agent**: Incorporating AI coding into Bloomberg's 20+ year onboarding program means new hires challenge senior engineers: "Hey, there's a new way to do this type of things. Why don't we do that?"
- **Leadership gap in AI adoption**: Data shows individual contributors have much stronger AI adoption than leadership. TLs and managers lack experience to guide teams in building software in the AI age—Bloomberg is rolling out leadership workshops.

### Announcements & Demos
- **Bloomberg AI Paved Path Infrastructure**: A complete platform including:
  - AI Gateway for model experimentation and selection guidance
  - MCP Hub (tool discovery directory) to prevent duplicate MCP server development
  - PaaS for MCP server deployment with runtime environment and ops handled
- **Incident Response Agent Architecture**: Detailed view showing MCP servers connecting to metrics/logs dashboards, topology systems (network and service dependency), alarms, triggers, and SLOs
- **Uplift Agents**: Automated patching system that scans codebase, identifies applicable patches, and generates PRs with explanations

### Technical Details
- **Bloomberg scale**: 9,000+ engineers (mostly software engineers), billions of market data ticks (600 billion mentioned), 500+ employees focused on AI products, one of the largest private networks and JavaScript codebases globally
- **Terminal architecture**: Thousands of different applications/"functions" (email, news, fixed income calculations, trading workflows) requiring diverse technologies
- **Open source contributions**: Helped create the Envoy AI gateway among many projects deployed in-house
- **Challenge identified**: Average open PRs increased and time-to-merge increased when deploying AI tooling—more code generated but still needs human review
- **Deterministic verification need**: AI/ML patches work best with good test cases and linting; without verification capabilities, patches are "difficult to apply"
- **Community structure**: "Champ program" and "guild program" for cross-organization tech communities, plus "visit engineer" program for cross-team collaboration (6-month to 1-year assignments)

---

## 💡 Notable Quotes

> "Unless we deploy and try we wouldn't know what's the best way to benefit from all the awesome work... we quickly form a team, people start iterating on utilizing the toolings."

> "Make the right thing extremely easy to do and make sure the wrong thing is ridiculously hard to do."

> "With GenAI tools it's really, really fast and it's also unbiased... when we do troubleshooting sometimes we have biased views—it must be this—turns out to be not the case."

> "What is high quality software engineering and how can we use a tool for that purpose? ... it actually changes the cost function of software engineering."

---

## 🔮 Implications & Predictions

**For Developers**: 
Don't expect AI to magically solve complex legacy codebase work—the productivity gains are strongest in greenfield scenarios. Look for opportunities to use AI on maintenance tasks you don't enjoy: migrations, patching, dependency updates. These deliver clearer ROI with less quality risk.

**For AI Tool Builders**: 
Incident response is an underexplored but high-value use case. AI's speed and lack of bias make it ideal for traversing telemetry, logs, and traces. Building MCP servers that connect to observability infrastructure could be a major opportunity.

**For Engineering Leaders**: 
Consider the "paved path" approach: provide infrastructure that makes innovation easy but maintains quality gates. Your new hires can be change agents—train them in AI practices and let them challenge existing teams. Also recognize that YOU may be the adoption bottleneck; Zhang's data shows leadership lags behind ICs.

**Contrarian/Surprising Takes**: 
- Bloomberg deliberately avoided chasing productivity gains in core development—instead targeting unglamorous maintenance work
- New hire training programs (not top-down mandates) are presented as the most effective adoption mechanism
- Leadership workshops are needed because managers lack experience to guide AI-era software development

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #08 (Yegor Denisov-Blanch, Stanford) - Both found that simple productivity metrics don't capture reality; Bloomberg saw gains drop outside greenfield work
- **Agrees with**: Talk #09 (Itamar Friedman, Qodo) - Both identify increased PRs and review time as an AI side effect; Bloomberg saw "time to merge increased"
- **Agrees with**: Talk #07 (McKinsey) - Both emphasize infrastructure and organizational change over individual tool usage; paved path mirrors "rewiring to AI-native workflows"
- **Extends**: Talk #02 (Katelyn Lesse, Anthropic) - Bloomberg's MCP hub and MCP server PaaS is a practical enterprise implementation of MCP architecture for agent tools
- **Contrasts with**: Talk #05 (Yegge & Kim) - Where vibe coding emphasizes individual freedom, Bloomberg's "paved path" explicitly constrains choices to ensure quality
- **Related themes**: Enterprise deployment patterns (Talk #07), MCP architecture (Talk #02), code review bottlenecks (Talk #09), organizational change (Talk #07)

---

## 🏷️ Search Keywords

`Lei Zhang` `Bloomberg` `enterprise AI deployment` `9000 engineers` `paved path` `MCP` `MCP hub` `uplift agents` `incident response` `AI gateway` `organizational adoption` `training programs` `code migration` `technical debt` `developer productivity`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
