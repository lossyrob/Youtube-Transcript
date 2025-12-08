# No-Regrets Investments: What's Good for Humans is Good for AI
**Speaker**: Max Kanat-Alexander (Executive Distinguished Engineer, Capital One)
**Day**: 1 | **Talk #**: 15

---

## 🎯 Quick Read (TL;DR)

Max Kanat-Alexander, a veteran developer experience engineer at Capital One, addresses a critical question facing CTOs and engineering leaders: what investments will still pay off by the end of 2026 given AI's rapid pace of change? His answer: stop treating AI agents as magic solutions and instead invest in the fundamentals that make both humans AND agents more effective.

The core insight is elegant—agents face the same friction points humans do, just magnified. Bad codebases, missing documentation, slow CI pipelines, and poor testing all hurt agent productivity just as they hurt human productivity. The difference is that agents are more persistent but also more error-prone, so friction compounds faster. Meanwhile, code review has transformed from a periodic task to the primary job of every engineer—and many organizations are failing to scale this new reality.

**Core Thesis**: "What's good for humans is good for AI"—the no-regrets investments that will pay dividends regardless of where AI goes are the same things that always made developers more productive: standardized tooling, fast validation loops, testable code, documented context, and high-quality code review.

**Top 3 Takeaways**:
1. Use industry-standard tools the way the industry uses them—you're fighting the training set if you don't
2. Agents need CLIs/APIs to take action, fast deterministic validation with clear error messages, and well-structured codebases they can reason about
3. Code review is now everyone's primary job; without scaling it properly (assigned reviewers, SLOs, quality standards), you'll enter a vicious cycle of declining productivity

---

## 📋 Key Takeaways

### Main Arguments
- **Stop Fighting the Training Set**: Use standard tools (package managers, linters) the way the outside world uses them. If you invented your own package manager, undo it. Don't use obscure programming languages for production work—they're not in the training set.
- **Agents Need CLIs/APIs**: While computer use exists, text-based CLI interaction is what agents understand most natively. In areas where accuracy matters dramatically, don't make agents orchestrate browsers or write Playwright when a simple CLI would work.
- **Validation is Critical**: Any objective, deterministic validation increases agent capabilities. Tests and linters must produce clear error messages—agents cannot divine what "500 internal error" means or what to do about it.
- **Testability Debt is Real**: Many legacy codebases weren't designed with testing in mind. Agents asked to write tests on untestable codebases produce "I pushed the button and the button pushed successfully" quality tests.
- **Structure Enables Reasoning**: Agents work better on well-structured codebases. Legacy codebases where "the information necessary to reason about that codebase isn't in the codebase" decrease agent capability just as they decrease human capability.
- **Document the Why**: The agent can explain what code does, but it cannot know WHY you wrote it unless that's written down. External context (data shapes, specifications, requirements) that can't be in the code must be written somewhere accessible.
- **Code Review is Now Primary Work**: "Writing code has become reading code"—every software engineer is now primarily a code reviewer. This includes both iterative review with agents and traditional PR review.
- **Code Review Bottleneck Warning**: More PRs from AI → one responsive person on each team does all reviews → system breaks at scale. Must assign specific reviewers with SLOs and enforcement.
- **Quality Bar Must Hold**: If you don't reject things that shouldn't go in, productivity gains from agents will DECREASE over time as the system becomes harder for both agents and humans to work with.
- **Apprenticeship Problem**: Best code reviewers spend all their time in meetings doing strategy. No mechanism to teach junior engineers to be good code reviewers except through doing good code reviews together.

### Announcements & Demos
- No major product announcements—this was a principles and strategy talk from an enterprise practitioner's perspective

### Technical Details
- **CI Speed Matters**: If CI takes 15-20 minutes and agents run tests 5 times in a row iteratively, developer productivity tanks. 30-second feedback loops vs 20-minute loops make dramatic differences.
- **Development Time Validation**: Things that only run in CI are a problem—agents need validation at development time to iterate quickly
- **GitHub Limitations**: GitHub's interface doesn't clearly show whose turn it is to take action in PR reviews, leading to Slack-based coordination ("I'm ready for you to review again")
- **The Vicious vs Virtuous Cycle**:
  - Vicious: Bad codebase → agent nonsense → developer frustration → rubber-stamp PRs → worse codebase → decreasing agent productivity
  - Virtuous: Good foundations → agent effectiveness → quality review → improving codebase → accelerating productivity

---

## 💡 Notable Quotes

> "I have never in my life seen anything like the last 12 months."

> "A lot of people have just decided, 'Well, I don't know, I guess it's just coding agents and I guess they'll fix every single thing about my entire company by themselves.'"

> "You probably should not do that. You probably should undo that and try to go back to the way the outside world does software development because then you are not fighting the training set."

> "Writing code has become reading code. So even now when we are writing code, we spend more time reading it than actually typing things into the terminal."

> "What's good for humans is good for AI. And the great thing about this is that when we invest in this thing, we will help our developers no matter what. Even if sometimes we miss on helping the agent, we are guaranteed to help the humans."

---

## 🔮 Implications & Predictions

**For Developers**: 
Stop using obscure languages and custom tooling for production work—you're fighting the training set. Focus on becoming an excellent code reviewer since that's now your primary job. Push for fast validation loops and clear error messages in your test infrastructure.

**For AI Tool Builders**: 
Build robust CLI interfaces for agent interaction—they're more reliable than computer use or browser automation. Focus on clear, actionable error messages. The constraint isn't the agent's intelligence; it's the quality of feedback loops in the environment.

**For Engineering Leaders**: 
This is the moment to make fundamental infrastructure investments. The companies that standardize tooling, improve testability, speed up CI, and scale code review properly will see compounding returns as agent capabilities increase. Those who don't will enter a vicious cycle of declining productivity despite using the same tools. Assign reviewers explicitly with SLOs—"Hey team, someone review this" doesn't scale.

**Contrarian/Surprising Takes**: 
- Don't use obscure programming languages anymore, even if you love them—save enthusiast languages for side projects
- Innovation in tooling will still happen through enthusiasts, but enterprises should stick to standard tools
- The best code reviewers being in meetings all day is a "social disease" preventing quality improvement
- Prediction: Companies in the vicious cycle will see agent productivity *decrease* through 2025

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #09 (Itamar Friedman, Qodo) - Both identify code review as a critical bottleneck and warn about vicious cycles of declining quality; Friedman's "glass ceiling" aligns with Kanat-Alexander's "no-regrets investments"
- **Agrees with**: Talk #08 (Yegor Denisov-Blanch, Stanford) - Both emphasize that codebase quality predicts AI effectiveness; messy codebases hurt agents just as they hurt humans
- **Agrees with**: Talk #06 (OpenAI Codex) - "Harness is the hard part" maps to Kanat-Alexander's focus on environment quality over agent capabilities
- **Extends**: Talk #02 (Katelyn Lesse, Anthropic) - Anthropic emphasizes context engineering; Kanat-Alexander provides enterprise perspective on what "context" means (documentation, external data shapes, specifications)
- **Agrees with**: Talk #13 (Lei Zhang, Bloomberg) - Both advocate for "paved path" infrastructure and standardization as the key to enterprise AI adoption
- **Related themes**: Code review bottleneck (Talk #09), codebase quality (Talk #08), enterprise infrastructure (Talk #07, #13), context engineering (Talk #02)

---

## 🏷️ Search Keywords

`Max Kanat-Alexander` `Capital One` `developer experience` `DevEx` `code review` `enterprise AI` `legacy code` `testability` `CI/CD` `validation` `training set` `no-regrets investments` `standardization` `PR review bottleneck` `vicious cycle` `virtuous cycle`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
