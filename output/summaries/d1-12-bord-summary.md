# GenBI: Building a Trusted AI Business Intelligence Agent at a 160-Year-Old Financial Services Company
**Speaker**: Asaf Bord (Northwestern Mutual)
**Day**: 1 | **Talk #**: 12

---

## 🎯 Quick Read (TL;DR)

Asaf Bord shares how Northwestern Mutual—a risk-averse 160-year-old financial services company—successfully built and deployed a GenBI (Generative AI + Business Intelligence) agent despite enterprise constraints. The key insight: they used real messy data from day one rather than cleaned test data, involved actual BI users in the research process to create buy-in, and designed an incremental "crawl-walk-run" delivery approach with tangible business value at each 6-week sprint. The architecture uses four specialized agents (metadata, RAG, SQL, BI) working together, with governance baked in. They started by routing users to existing certified reports rather than generating SQL from scratch—automating 80% of report-finding work that consumed 20% of BI team capacity. The talk demonstrates how to sell innovative AI projects to conservative leadership: eliminate sunk cost bias, provide exit ramps at each phase, and deliver measurable value incrementally.

**Core Thesis**: Successfully deploying GenAI in risk-averse enterprises requires incremental delivery with early business value, using real messy data, involving end users in research, and building trust through transparent governance and controlled rollout.

**Top 3 Takeaways**:
1. Start with existing certified reports via RAG before attempting SQL generation—this built trust and automated 80% of "find the right report" work
2. Six-week sprints with tangible deliverables at each phase let leadership pull the plug anytime, reducing perceived risk of investment
3. Involving actual BI users in research created buy-in—they became advocates who pulled the product into production rather than needing to be convinced

---

## 📋 Key Takeaways

### Main Arguments
- **Use real messy data from the start**: Working with actual 160-year-old enterprise data (not synthesized/cleaned) ensures learnings translate to production and surfaces real complexity early—the gap from POC to production is brutal in GenAI
- **The crawl-walk-run trust ladder**: Release first to BI experts who can verify correctness, then to business managers who know when things look wrong, then eventually to executives—each tier has different error tolerance
- **Don't start with SQL generation**: Begin by routing users to existing certified reports via RAG; 80% of BI team questions are just "where's the right report?"—automate that first to build trust
- **End users as research partners**: Involving the business team in research gave subject matter expertise for evals, real question examples, and created advocates who pulled the product to production rather than needing convincing
- **Eliminate sunk cost bias for leadership**: Structure projects so leaders can pull the plug at any phase without feeling they wasted prior investment; each phase delivers standalone value
- **Metadata enrichment has independent value**: Learning what good metadata looks like for LLMs also improved human data discovery—this justified investment even if the full agent never ships

### Announcements & Demos
- **GenBI Production Components**: Northwestern Mutual has productized individual agents from their pipeline:
  - RAG agent for report discovery (live in production)
  - Metadata understanding powering semantic layer initiative
  - Data pivoting bot currently in experimentation
- **Evaluating third-party tools**: Now using their benchmarks to evaluate solutions like Databricks Genie
- **Catalog enrichment initiative**: Major effort underway to enrich data catalog with metadata based on research learnings

### Technical Details
- **Four-agent architecture**:
  - Metadata agent: Understands context using catalog and documentation
  - RAG agent: Finds existing certified reports matching the question
  - SQL agent: Creates/expands queries when reports don't suffice (uses report queries as few-shot examples)
  - BI agent: Translates data results into business-readable answers
- **Orchestration layer**: Decides how to route questions through agents, maintains conversation context
- **Governance layer**: Built-in controls for access, certification, and trust
- **Quantified impact**: RAG agent alone automated 80% of report-finding work that consumed 20% of BI team capacity (~2 FTEs worth of "find and send right report" work)
- **Validation approach**: AB tests comparing LLM performance on databases with good vs. poor metadata proved value of documentation investment
- **Phase structure**: 6-week sprints, each delivering standalone value:
  - Phase 1: Natural language to SQL research
  - Phase 2: Metadata/context understanding for BI agents
  - Phase 3: Multi-context semantic search (productizable as data finder)
  - Phase 4: Information retrieval + light data pivoting
  - Phase 5: Enterprise roles and access management
  - Phase 6: Full SQL agent capability

---

## 💡 Notable Quotes

> "If you think about it, our main motto is generational responsibility. I call it don't f up. Because what we end up selling to people is a decades-long commitment."

> "We didn't just test something in the lab and then had to convince someone to go ahead and use it. The end users were part of the research process itself."

> "At any point in time they could pull the plug and say okay, it's not working well, or we got enough out of it, or the next phase is so unknown that we don't want to further invest."

> "Even if we don't end up writing a GenBI agent full-fledged end to end, we already got a lot of value back from this."

---

## 🔮 Implications & Predictions

**For Developers**: 
If you're building data/BI agents, don't start with SQL generation—it's the hardest part. Start by helping users find existing certified reports. Use those report queries as few-shot examples when you do need to generate SQL. Good metadata is everything.

**For AI Tool Builders**: 
Enterprise buyers in conservative industries need incremental delivery with exit ramps. Design products that can deliver value at each phase, not just at the end. Also: Bord predicts usage-based pricing will replace seat-based pricing as individuals become 10x more effective—Salesforce is already experimenting with this.

**For Engineering Leaders**: 
Structure AI research investments as a series of 6-week sprints with standalone deliverables. This eliminates sunk cost bias and makes it easier to get initial funding. Also involve end users in research—they become advocates who pull products to production.

**Contrarian/Surprising Takes**: 
- Northwestern Mutual explicitly chose NOT to use ChatGPT or third-party tools initially—governance baked into architecture from inside was essential
- They may never give executives direct access to the tool because accuracy requirements are too high for that user class
- The speaker suggests that even if they abandon their own agent for Databricks Genie, the research was worthwhile because they now have benchmarks and know what questions to ask vendors

---

## 🔗 Cross-Talk Connections

- **Agrees with**: Talk #08 (Yegor Denisov-Blanch, Stanford) - Both emphasize measuring actual value, not just activity metrics; Bord's incremental approach lets them prove ROI at each phase
- **Extends**: Talk #07 (McKinsey) - McKinsey discussed enterprise adoption challenges; this is a concrete playbook for getting AI past risk-averse leadership
- **Related themes**: Talk #03 (Replit) and Talk #02 (Anthropic) both discuss agent architectures with specialized components; Bord's four-agent design follows similar modular patterns
- **Contrasts with**: Talk #05 (Yegge/Kim) - While Yegge/Kim discuss 100x organizational change from vibe coding, Bord shows the reality of careful, incremental deployment in regulated enterprises

---

## 🏷️ Search Keywords

`Asaf-Bord` `Northwestern-Mutual` `GenBI` `business-intelligence` `enterprise-AI` `agent-architecture` `RAG` `metadata` `governance` `risk-averse` `financial-services` `incremental-delivery` `data-democratization` `SAS-pricing`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
