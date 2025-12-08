# Prompt Learning: RL Techniques for System Prompts
**Speaker**: Aparna Dhinakaran (Co-founder & CPO, Arize)
**Day**: 2 | **Talk #**: 17

---

## 🎯 Quick Read (TL;DR)

Aparna presents "prompt learning"—applying RL-style iteration to system prompts instead of model weights. The insight: what makes Cursor and Claude Code successful isn't just frontier models—it's the massive, constantly-iterated system prompts (Karpathy calls it "system prompt learning," compares it to Memento where you write down learnings to remember them).

The process: run agent on benchmark (SWE-bench), get failures, use LLM-as-judge to generate **explanations** (not just pass/fail), feed explanations into meta-prompt that updates system prompt rules. Results: Cloud Code +5% issues resolved, Cline +15% issues resolved—on just 150 examples, no fine-tuning.

The key differentiator from DSPI/GPA: eval engineering. Writing really good LLM-as-judge prompts that generate quality explanations is "super critical." GPA requires many loops and rollouts; prompt learning works with a fraction because the eval prompts are heavily optimized to give actionable feedback.

**Core Thesis**: System prompt iteration via English feedback is more sample-efficient than RL for improving agents—but only if your evals generate quality explanations, not just pass/fail scores.

**Top 3 Takeaways**:
1. Cursor/Claude Code success comes from constantly-iterated system prompts, not just frontier models
2. Prompt learning: 150 examples → +5% Cloud Code, +15% Cline improvements (no fine-tuning required)
3. The secret sauce is eval engineering—LLM-as-judge prompts must generate quality explanations, not just scores

---

## 📋 Key Takeaways

### Main Arguments
- **System Prompts Are Huge**: Leaked Claude prompt, Cursor prompt, Cline prompt—all massive and constantly iterated. This context is as important as model capability.
- **System Prompt Learning** (Karpathy term): Models take English feedback and use it to iterate on what to do differently. "Like Memento—write down learnings because you'll forget."
- **RL vs. Prompt Learning Analogy**: Student taking exam. RL = just get score (70%, 80%), figure out blindly how to improve. Prompt learning = get score PLUS explanation of what went wrong, what concepts to study.
- **RL Limitations for Agent Builders**: Sample inefficient, time intensive, data hungry, requires data science team. May be overkill when LLMs are already good—prompt learning more appropriate.
- **The Process**: Run agent → unit tests → LLM-as-judge eval → generate explanation → meta-prompt updates system prompt rules.
- **Results Without Fine-Tuning**: Just 150 SWE-bench examples. Cloud Code: 40% → 45% (+5%). Cline: 30% → 45% (+15%). Only changed system prompt.
- **Comparison to DSPI/GPA**: Similar concept (English feedback in prompt), but GPA requires many loops/rollouts. Prompt learning works with fraction because eval prompts are heavily optimized.
- **Eval Engineering Is Critical**: Writing good LLM-as-judge eval prompts is "how you get the best insight into what you could do to improve your agents." The explanation quality determines learning quality.

### Announcements & Demos
- **Arize Blog**: Writing extensively about eval prompt optimization
- **Hiring**: Actively hiring

### Technical Details
- **Starting Points**: Claude Code ~40% SWE-bench, Cline ~30% SWE-bench (vanilla, no rules added)
- **Data Set**: SWE-bench Light (150 examples) as training data
- **LLM-as-Judge Eval Structure**: Pass in problem statement, agent solution, unit test results, actual solution → output pass/fail + explanation
- **Meta-Prompt Inputs**: Original system prompt, original rules (empty), input, LLM-as-judge eval, explanation → outputs new rules to append
- **Diff Output**: Old world (original prompt, no rules) vs. new world (generated rules of what to avoid/learned from mistakes)
- **Key Metric**: GitHub issues resolved percentage
- **Also Tested**: BBH and "ton of other software engineering data sets"

---

## 💡 Notable Quotes

> "What's not so obvious is how much time is actually spent on the system prompts for those building these coding agents."

> "It almost feels like humans learning because they take back English feedback and use that to actually iterate on what they should do differently the next time."

> "Writing really good evals is how you get the best insight into what you could do to improve your agents."

> "The underlying approach around using English feedback is the same [as GPA], but the key thing that was really different was we spent a lot of time actually developing and iterating on the evals."

---

## 🔮 Implications & Predictions

**For Developers**: 
If you're building agents, consider prompt learning before jumping to fine-tuning. 150 examples + good evals can yield significant improvements. The secret is in eval engineering—your LLM-as-judge prompts need to generate quality explanations, not just scores.

**For AI Tool Builders**: 
System prompts are a massive lever. The leaked prompts show how much context goes into successful agents. Consider building tooling around prompt learning workflows—the meta-prompt pattern for iterating on system prompts.

**For Engineering Leaders**: 
You may not need a data science team for model improvements. Prompt learning is more accessible than RL—sample efficient, works with existing infrastructure. Invest in eval engineering as a competency.

**Contrarian/Surprising Takes**: 
- RL might be "overkill" for teams building agents—prompt learning is more appropriate when LLMs are already good
- The +15% improvement on Cline came from just system prompt changes on 150 examples, no model changes
- Eval quality > number of iterations—prompt learning beats GPA on sample efficiency because evals are better

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #06 Day 2 (Naman Jain) - Both emphasize eval engineering as critical; Jain on benchmark design, Aparna on LLM-as-judge prompts
- **Extends**: Talk #03 Day 2 (Anthropic) - Anthropic's skill prompts show the same pattern of detailed system prompt engineering
- **Relates to**: Talk #08 Day 2 (Applied Compute) - Alternative to RL training; prompt learning vs. weight updates
- **Related themes**: Eval importance (Talk #06), prompt engineering (Talk #04 Dex Horthy), system prompt iteration
- **Agrees with**: Talk #04 Day 2 (Dex Horthy) - Both on importance of encoding learnings; Dex in context, Aparna in system prompts

---

## 🏷️ Search Keywords

`Aparna Dhinakaran` `Arize` `prompt learning` `system prompt` `LLM-as-judge` `eval engineering` `SWE-bench` `Cline` `Cloud Code` `DSPI` `GPA` `meta-prompt` `English feedback` `Karpathy` `sample efficiency`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
