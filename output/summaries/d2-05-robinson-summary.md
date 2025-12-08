# Building Cursor Composer: Infrastructure for Fast Agent Models
**Speaker**: Lee Robinson (Head of Developer Experience, Cursor)
**Day**: 2 | **Talk #**: 05

---

## 🎯 Quick Read (TL;DR)

Lee Robinson reveals how Cursor built Composer, their first in-house coding agent model designed to be both fast AND smart. The model is 4x more efficient at token generation than similarly intelligent models, addressing what Lee calls the "airplane Wi-Fi problem"—tools that are too slow to stay in flow but not autonomous enough to run in the background.

The technical story is fascinating: reinforcement learning trained on Cursor's actual production environment. They built infrastructure to run rollouts across hundreds of thousands of VMs, matching the exact tool format and responses users encounter. The key insight: co-designing the IDE and model together let them train Composer to become a "power user" of their semantic search tool.

The training process taught the model better agent behavior—it learned to search and read files more before making edits, reducing unnecessary changes. RL worked "surprisingly well" for their specialized domain, and infrastructure challenges were the real ML challenges in disguise.

**Core Thesis**: Fast + smart agent models require co-designing IDE infrastructure and model training—Cursor's RL approach on production-matched environments produced a 4x more efficient model that keeps developers in flow.

**Top 3 Takeaways**:
1. Composer is 4x more efficient at token generation than similar-intelligence models—speed matters for staying in flow
2. Training infrastructure = ML challenge; hundreds of thousands of VMs simulating Cursor's exact production environment
3. RL taught the model to behave better as an agent—learned to search/read more before editing, reducing unnecessary changes

---

## 📋 Key Takeaways

### Main Arguments
- **Speed AND Intelligence Matter**: Early "Cheetah" prototype got feedback that it was fast but not smart enough for daily use. Users need both—speed for flow state, intelligence for complex tasks.
- **The Airplane Wi-Fi Problem**: Slow-but-capable agents create the "semi-async valley of death"—too slow for synchronous flow, not autonomous enough for true background execution. 10-20 minute waits put you in a frustrating middle ground.
- **Co-Design IDE + Model**: Having both the coding agent and model training in-house lets Cursor design them together. Cloud agents (VMs for running agents) became the perfect RL training environment.
- **RL Works for Specialized Tasks**: "At Cursor we're not trying to build AGI. We're trying to build very good coding models." RL has worked surprisingly well for this specific domain with high-quality data and sufficient compute.
- **Infrastructure Is the ML Problem**: The three ML challenges (matching environments, handling complex rollouts, ensuring consistency) all had infrastructure solutions. Training ML models at scale is fundamentally an infrastructure challenge.
- **Semantic Search as Superpower**: Cursor's custom embedding model for codebase search helps every model in their harness, but Composer benefits most because it was trained in the exact environment where semantic search exists.
- **Model Learned Better Agent Behavior**: Through RL, the model went from making too many unnecessary edits to learning to search and read files first—becoming a more effective agent autonomously.

### Announcements & Demos
- **Cursor Composer Released**: First in-house coding agent model, released with Cursor 2.0 last month
- **Performance Benchmarks**: Better than best open source models, slightly below latest frontier (Sonnet 4.5, GPT 5.1 Codex), but 4x more efficient at token generation
- **Cloud Agents Product**: Run Cursor agents offline—from phone, web, or Slack—using fleet of cloud VMs
- **New York Office**: Cursor opened an office in New York, hiring across the board
- **Custom Kernels Blog Post**: Detailed technical blog post on their low-precision training approach using custom kernels

### Technical Details
- **Architecture**: Three server types—inference server, ML stack (PyTorch), and environment servers (simulating Cursor)
- **Agent Tools**: ~10 tools including file reading, file editing, codebase search, lints, terminal/shell commands
- **Parallel Tool Calling**: Model learned to call tools in parallel (e.g., read 10 files at once) vs. serially, dramatically speeding up experience
- **Rollout Complexity**: Models use hundreds of thousands to millions of tokens, make hundreds of tool calls, each completing at different times
- **Load Balancing**: Shifted work across threads/processes to avoid idle time when rollouts complete at different speeds
- **Custom Kernels**: Low-precision training with custom kernels achieved 3.5x speedup on NVIDIA Blackwell chips for mixture-of-experts layers
- **Mixture of Experts Model**: Large MoE model parallelized across thousands of GPUs
- **Embedding Model**: Custom model for semantic search, indexes user codebases for natural language file queries
- **VM Fleet**: Hundreds of thousands of VMs for training, visualized via internal dashboard built with Composer

---

## 💡 Notable Quotes

> "When you're on airplane Wi-Fi, it works, but it's kind of frustrating... Sometimes you wish you just didn't have Wi-Fi at all. And I think for some of us who adopted coding agents very early, it kind of feels like airplane Wi-Fi sometimes."

> "At Cursor we're not trying to build general intelligence. We're not trying to build AGI. We're trying to build very good coding models and RL has worked surprisingly well for that."

> "The model kind of becomes a power user of this tool [semantic search] which is really effective."

> "It was interesting to see how much of the ML work and the training process was actually also an infrastructure problem. They were very correlated."

---

## 🔮 Implications & Predictions

**For Developers**: 
The "airplane Wi-Fi" problem is real—tools need to be either fast enough for synchronous flow OR powerful enough to run truly in the background. Lee's workflow: use frontier models (GPT 5.1 Codex) for planning, use Composer for fast execution. Consider similar tiered approaches with different models for different phases.

**For AI Tool Builders**: 
Training on your actual production environment (not mocked/simulated) produces models that are "power users" of your specific tools. Co-designing infrastructure and models is a competitive advantage. Speed is not just nice-to-have—it fundamentally changes the user experience and keeps people in flow state.

**For Engineering Leaders**: 
RL works well for specialized domains—you don't need to build AGI to build extremely useful coding tools. The infrastructure investment required for model training is substantial (hundreds of thousands of VMs), but it compounds across all engineering efforts. Speed improvements unlock new interaction patterns (synchronous vs. async).

**Contrarian/Surprising Takes**: 
- The "semi-async valley of death" framing—being too slow for flow but not autonomous enough for background is worse than either extreme
- Infrastructure problems and ML problems are "very correlated"—more related than people might think
- Model learned good agent behaviors through RL without explicit instruction—emerged from training on realistic environments
- Not pursuing AGI but "very good coding models"—explicit scope limitation as strategy

---

## 🔗 Cross-Talk Connections

- **Extends**: Talk #04 Day 2 (Dex Horthy) - Lee explicitly mentions "what Dex talked about"—using frontier models for plans, fast models for execution. Validates Dex's research-plan-implement workflow.
- **Agrees with**: Talk #02 Day 2 (swyx) - Both reference the "semi-async valley of death" problem swyx coined; Lee's solution is faster models
- **Agrees with**: Talk #06 Day 1 (OpenAI) - Both discuss "harness engineering" and the importance of tool design for agents
- **Related themes**: Infrastructure challenges (Talk #07 McKinsey), model training approaches (Talk #10 MiniMax), context management (Talk #02 Anthropic)
- **Contrasts with**: Talk #16 Day 1 (NLW) - NLW mentioned agents running 30-60 hours; Cursor focuses on fast synchronous agents instead

---

## 🏷️ Search Keywords

`Lee Robinson` `Cursor` `Composer` `coding agent` `reinforcement learning` `RL` `model training` `semantic search` `parallel tool calling` `mixture of experts` `MoE` `custom kernels` `cloud agents` `airplane Wi-Fi` `semi-async` `infrastructure`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
