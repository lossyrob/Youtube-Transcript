# Vibe Engineering: Beyond Vibe Coding
**Speaker**: Kitze (Founder, Sizzy / Zero to Ship)
**Day**: 2 | **Talk #**: 11

---

## 🎯 Quick Read (TL;DR)

Kitze delivers a hilarious yet incisive talk distinguishing "vibe coding" (casino-style prompting for non-coders) from "vibe engineering" (skilled developers using agents while staying suspicious of the code). The key insight: LLMs don't care about repetitive code—and maybe we shouldn't either. Our obsession with abstraction is a human quirk, not a user need.

Cursor's Composer One was a game-changer that brought Kitze "back in the driver's seat"—fast enough to watch what the agent does and intervene ("stop, no, no, no"). He achieved more in two weeks than the previous year, reviving multiple abandoned projects. But this only works for "vibe engineers" who know when code is good enough. Vibe coders just get "wrong fast."

The talk diagnoses why skeptics hate vibe coding: unlucky timing (models get nerfed after hype), overwhelm (billion tools, buzzwords like MCP), and being a "PETA dev" (Pain-in-the-Ass developer who nitpicks two-line PRs). The uncomfortable prediction: jobs are "thinning from the bottom"—juniors and interns getting replaced while legacy maintainers ("Cobol Cowboys") remain essential.

**Core Thesis**: Vibe engineering (skilled + skeptical + using agents) beats both vibe coding (unskilled casino prompts) and traditional skepticism—but only if you can judge when code is "good enough."

**Top 3 Takeaways**:
1. Cursor Composer One is a game-changer—fast feedback loops let you steer agents in real-time vs. waiting 37 minutes
2. LLMs don't care about repetitive code; our abstraction obsession is a human quirk that often hurts more than helps
3. Voice coding for 5-minute brain dumps outperforms short text prompts—narrate what you see in UI AND code

---

## 📋 Key Takeaways

### Main Arguments
- **Vibe Coding vs. Vibe Engineering**: Vibe coding is casino-style prompting without understanding. Vibe engineering is using agents constantly while staying suspicious and knowing when to intervene.
- **LLMs Don't Care About Repetitive Code**: "I've been saying since 2017 that we care too much about repetitive code and we abstract too early." LLMs write verbose code that works perfectly—abstraction is a human aesthetic preference.
- **No One Is Good At React**: "So when we say 'machines can't write proper useEffect'—can you?" Every React conference teaches you something you were doing wrong. Stop blaming machines for human confusion.
- **Composer One Changed Everything**: Fast feedback loops let you watch what the agent does and intervene. Previous models (GPT-5 Codex) took "37 years" and forced context-switching. "I missed coding"—Composer brought that back.
- **Vibe Engineering Requires Skills**: Knowing model limits, agent capabilities, context to pass, how to write rules, prompt engineering, technical knowledge to steer, and judging what's "good enough."
- **Why People Hate Vibe Coding** (diagnostic):
  1. Unlucky timing—tried during a model nerf
  2. Overwhelmed by tool choices
  3. Cheaped out on tokens
  4. Being a "PETA dev" (pain-in-the-ass perfectionist)
  5. Skill issue—vibe engineering is a real skill to learn
- **Managers Have Been Vibe Coding Forever**: They assign features, developers code, managers test the app, managers don't read the code. This pattern isn't new.
- **"Good Enough" Is a Critical Skill**: The best developers know when code doesn't need optimization. This skill translates directly to vibe engineering—test briefly, decide it's good enough, move on.
- **Don't Give AI to Juniors**: "The dumbest idea" is hiring cheap juniors and giving them LLMs. Take your skeptical seniors and convince them to vibe engineer—10x results.
- **Jobs Thinning From Bottom**: Juniors and interns can't enter because agents replace them. Legacy system maintainers (Cobol Cowboys) remain essential. "It's funny until it's not."

### Announcements & Demos
- **Sizzy**: Browser for developers (front-end development tool)
- **Zero to Ship**: Full-stack course/starter kit
- **Benji.so**: Revived project—moved to Next 16, app router, tRPC, monorepo, React Native in less than a week using Composer One
- **Glink**: Revived changelog/roadmap tool
- **Personal Results**: "Achieved in two weeks more than in last year" solely due to Composer One

### Technical Details
- **Voice Coding Workflow**: Brain dump while agent works—narrate what you see in UI, then jump to code and narrate implementation. Prompts last up to 5 minutes.
- **Git Workspaces**: "Heard of this literally two weeks ago"—useful for agent workflows
- **Tech Stack Migrations**: Successfully migrated Electron/MobX/MobState spaghetti codebase using Composer
- **MCP Definition** (satirical): "Marketing Charge Protocol, Mythical Compatibility Promise, Manufactured Complexity Pipeline, fancy word for API"
- **Context Management**: "Cannot have your entire app context for now"—use rules, docs, commands, memories to provide right context

---

## 💡 Notable Quotes

> "LLMs don't care about repetitive code. And I've been seeing this since 2017 that we care too much about repetitive code and we abstract too early."

> "LLMs are also good at writing React because no one is actually good at writing React."

> "If you're a vibe coder, you have no idea whether the model is right or wrong. You're just—it might be wrong fast."

> "Do not give AI tools to your interns and juniors. People think these are perfect... But if you take your skeptical senior and you convince them to do vibe engineering, you're going to get 10x results."

> "The hardest part is actually convincing them [senior skeptics]."

---

## 🔮 Implications & Predictions

**For Developers**: 
Voice coding is underrated—5-minute narrated brain dumps beat short text prompts. The skill isn't writing English; it's knowing model limits, context to pass, and when code is "good enough." If you're skeptical, the problem might be unlucky timing, tool overwhelm, or being a PETA dev—not the technology itself.

**For AI Tool Builders**: 
Speed matters more than raw capability for developer experience. Composer One's game-changing quality isn't intelligence—it's letting developers stay in the loop and intervene. The "37-minute wait" model creates context-switching; fast feedback creates flow state.

**For Engineering Leaders**: 
Token burn leaderboards (Shopify example) signal which employees are adapting. Don't give AI to juniors expecting productivity—they can't judge quality. Convert your skeptical seniors instead. Jobs are "thinning from the bottom"—junior/intern roles most at risk.

**Contrarian/Surprising Takes**: 
- Our obsession with avoiding repetitive code is a human aesthetic bug, not a feature
- The best people for vibe engineering are those who already knew when NOT to optimize
- MCP is essentially "a fancy word for API" (sardonic but pointed)
- Junior developers with AI = disaster; skeptical seniors with AI = 10x
- "Cobol Cowboys" pattern: legacy maintainers always highest paid, will apply to React one day

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #02 Day 2 (swyx) - Both concerned with "slop" from unskilled AI usage; swyx defines slop, Kitze distinguishes vibe coding (slop) from vibe engineering (quality)
- **Agrees with**: Talk #04 Day 2 (Dex Horthy) - Both emphasize human judgment remaining essential; Dex's "don't outsource thinking" = Kitze's "stay suspicious"
- **Agrees with**: Talk #05 Day 2 (Lee Robinson) - Both praise Cursor Composer One's speed as transformative for developer experience
- **Contrasts with**: Talk #17 Day 1 (Arman Hezarkhani) - Hezarkhani wants to pay for output; Kitze skeptical of metrics like token burn leaderboards
- **Related themes**: Quality concerns (Talk #09 Day 1), adoption patterns (Talk #16 NLW), organizational change (Talk #05 Yegge & Kim)

---

## 🏷️ Search Keywords

`Kitze` `vibe coding` `vibe engineering` `Cursor` `Composer One` `Sizzy` `Zero to Ship` `voice coding` `PETA dev` `abstraction` `code quality` `juniors` `seniors` `MCP` `React` `good enough` `skill issue`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
