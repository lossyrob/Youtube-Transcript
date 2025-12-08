# Building an AI-Native Browser: Lessons from DIA
**Speaker**: Samir Mody (Head of AI Engineering, The Browser Company)
**Day**: 1 | **Talk #**: 14

---

## 🎯 Quick Read (TL;DR)

Samir Mody shares the Browser Company's journey from Arc to DIA, their AI-native browser built from the ground up. The talk centers on three key lessons: (1) optimizing tools and processes for faster iteration, (2) treating model behavior as a craft and discipline, and (3) building AI security as an emergent property of product design.

The Browser Company democratized prompt engineering by building iteration tools directly into their product, enabling everyone from the CEO to new hires to prototype AI features with their full personal context. They use "Jeepa" (based on academic research) for sample-efficient prompt optimization without RL or fine-tuning. A key revelation: a strategy & ops team member rewrote all their prompts in one weekend and dramatically improved product quality—proving the best model behavior experts might not be engineers.

The security discussion focuses on prompt injections, a critical concern for browsers which sit at a "lethal trifecta" of private data access, untrusted content exposure, and external communication capability. Rather than relying solely on technical defenses (which are imperfect), they blend technology with UX—human confirmation steps before sensitive actions like form autofill or email sending.

**Core Thesis**: Building AI-native products requires company-wide transformation—not just adding AI features, but evolving tools, processes, teams, hiring, and security thinking from the ground up.

**Top 3 Takeaways**:
1. Build AI iteration tools INTO your product so everyone can prototype with full context—not just engineers in dev builds
2. Model behavior is an emerging discipline; the best people for it may surprise you (strategy/ops, not just engineers)
3. Prompt injection defense requires blending technical approaches with UX design; user confirmation steps are essential for trust

---

## 📋 Key Takeaways

### Main Arguments
- **Tools in Product, Not Dev Builds**: Browser Company initially had rudimentary prompt editors only in dev builds, limiting access to engineers. By building all AI tools (prompts, parameters, models, context) directly into DIA itself, they 10x'd ideation speed and enabled everyone to iterate with their full personal context.
- **Jeepa for Prompt Optimization**: A sample-efficient technique to improve complex LLM systems without RL or fine-tuning. Seeds with prompts, executes across tasks, scores them, uses "PA selection" to explore the prompt space, then leverages LLM reflection to generate new prompts. Key innovation: tuning text, not weights.
- **Model Behavior as Craft**: Defined as the function that "defines, evaluates, and ships desired behavior models"—turning principles into product requirements, prompts, and evals. Buckets into: behavior design (style, tone, response shape), data collection for measurement/training, and model steering (prompting, model selection, context window).
- **Evolution Analogy**: Compared model behavior evolution to web design evolution—from functional websites to crafted experiences. LLM products evolved from simple "instructions in, output out" to agent behaviors with goal-directed reasoning, autonomous tasks, self-correction, and personality shaping.
- **Non-Engineers as Model Behavior Experts**: A strategy & ops team member used their internal tools to rewrite ALL prompts over a weekend, producing a Loom video explaining the approach. Those prompts "unlocked a new level of capability and quality"—leading to the formation of their model behavior team.
- **Prompt Injection as Critical Browser Concern**: Browsers occupy a "lethal trifecta"—access to private data, exposure to untrusted content (web pages), and ability to communicate externally (open websites, send emails, schedule events).
- **Technical Defenses Are Insufficient**: Wrapping untrusted content in tags, separating data/instructions into system/user roles, and random tags can help but provide no guarantees. Prompt injections will still happen.
- **UX as Security**: Design products with prompt injections in mind. For autofill, email sending, and calendar scheduling in DIA, users confirm data in plain text before execution. This doesn't prevent injections but provides control, awareness, and trust.
- **Company-Wide Transformation**: Recognizing AI as a technology shift requires embracing it with conviction across the entire company—training, hiring, communication, collaboration, and team structure—not just product features.

### Announcements & Demos
- **DIA Browser**: Shipped earlier in 2025—AI-native browser with assistant alongside all browser work, personalization, memory, and integration with tabs/apps
- **Internal Prompt Tools**: Tools built into DIA itself for prompt iteration, memory knowledge graph optimization, and computer use mechanism prototyping
- **Jeepa Implementation**: Active use of Jeepa for automated prompt hill-climbing and optimization
- **Model Behavior Team**: New team formed around model behavior discipline, inspired by non-engineer contributions

### Technical Details
- **Jeepa Workflow**: Seed prompts → Execute across tasks → Score → PA selection (explore prompt space) → LLM reflection (what worked/didn't) → Generate new prompts → Repeat
- **Computer Use Exploration**: Tried "tens of different types of computer use strategies" before landing on their approach—all prototyped through internal tools before building into product
- **Prompt Injection Defenses Attempted**: XML-style tags for untrusted content, system/user role separation, randomly generated wrapper tags—all acknowledged as imperfect
- **Confirmation UI Pattern**: Consistent across autofill, email writing, and event scheduling—user sees plain text of what will be written/sent before execution
- **Memory Knowledge Graph**: Internal tools for optimizing and iterating on DIA's memory system
- **Product Development Phases**: (1) Ideation phase—wide breadth of ideas, low threshold, daily/weekly experiments, dog-fooding (2) Refinement phase—collect evals, clarify requirements, hill climb through code/prompting/Jeepa, ship

---

## 💡 Notable Quotes

> "From the beginning, Browser Company has believed that we're not going to win unless we build the tools, the process, the platform, and the mindset to iterate, build, ship, and learn faster than everyone else."

> "Once upon a time, it took me hours to write 10 proper lines of code. Now 5 minutes calling Claude Code, I have 1,000 lines of code after 5 minutes." (Note: This quote appears to be from another talk—removing)

> "One of my favorite stories about building DIA... a person on our strategy and ops team leveraged these prompt tools one weekend to rewrite all our prompts. And those prompts alone unlocked a new level of capability and quality and experience in our product."

> "Browsers sit at the middle of what we can call a lethal trifecta. It has access to your private data. It has exposure to untrusted content. And it has the ability to externally communicate."

> "When you recognize that technology shift, you have to embrace it. And you have to embrace it with conviction."

---

## 🔮 Implications & Predictions

**For Developers**: 
Build your AI iteration tools into your actual product, not just dev environments. When everyone can prototype with their full personal context, you get better ideas from unexpected sources. Consider who on your team—regardless of title—might excel at model behavior work.

**For AI Tool Builders**: 
The Browser Company's approach suggests major opportunity in democratizing prompt engineering tools. Products that let non-engineers iterate on AI behavior with full context have competitive advantages. Jeepa-style automated prompt optimization (without RL/fine-tuning) is particularly valuable for smaller teams.

**For Engineering Leaders**: 
Building AI-native products is a company-wide transformation, not a feature addition. Consider creating dedicated "model behavior" roles/teams. Security for AI products requires blending technical defenses with UX design—neither alone is sufficient.

**Contrarian/Surprising Takes**: 
- The best model behavior experts may NOT be engineers—strategy, ops, and other non-technical roles can excel
- Prompt injection technical defenses are fundamentally insufficient; you MUST design products assuming injections will happen
- Building an AI-native product required rethinking not just the product but "how we train everyone... how we hire... how we communicate... how we collaborate"

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #02 (Katelyn Lesse, Anthropic) - Both emphasize context as critical for AI quality; Anthropic's "context engineering" aligns with Browser Company's "full personal context" approach
- **Agrees with**: Talk #03 (Michele Catasta, Replit) - Both emphasize iterative prototyping and the importance of verification steps before autonomous actions
- **Extends**: Talk #09 (Itamar Friedman, Qodo) - Friedman's security concerns about AI code find parallel in Mody's detailed treatment of prompt injection defense
- **Related themes**: Context management (Talk #02), iteration speed (Talk #03), security (Talk #09), organizational transformation (Talk #05, Talk #07)
- **Contrasts with**: Talk #06 (OpenAI Codex) - While OpenAI emphasizes SDK abstractions, Browser Company built bespoke internal tools directly into their product

---

## 🏷️ Search Keywords

`Samir Mody` `Browser Company` `DIA` `Arc browser` `AI browser` `model behavior` `prompt injection` `Jeepa` `prompt optimization` `AI security` `computer use` `memory knowledge graph` `product iteration` `AI-native` `UX security`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
