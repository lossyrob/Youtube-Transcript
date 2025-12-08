# Skills Not Agents: The New Paradigm for Extending General-Purpose AI
**Speaker**: Barry Zhang & Mahesh Murag (Anthropic)
**Day**: 2 | **Talk #**: 03

---

## 🎯 Quick Read (TL;DR)

Barry Zhang and Mahesh Murag present Anthropic's paradigm shift: stop building specialized agents, start building *skills*—organized folder structures that package procedural knowledge for general-purpose agents like Claude. The key insight is that code isn't just a use case, but a universal interface to the digital world. Cloud Code became a general-purpose agent capable of financial reports, data analysis, and more through bash and file system access.

Skills solve the expertise problem: agents are brilliant but lack domain knowledge. Skills are deliberately simple (just folders with markdown files, scripts, and assets) so anyone can create them. They're progressively disclosed to protect context windows—only metadata loads initially, full content on-demand. Five weeks after launch, thousands of skills exist across foundational capabilities, third-party integrations (Notion, Browserbase), and enterprise-specific workflows.

The emerging architecture: agent loop + runtime environment + MCP servers for connectivity + skills library for expertise. This mirrors computing history—models are processors, agent runtimes are operating systems, and skills are the application layer where millions of developers encode domain expertise.

**Core Thesis**: Code is a universal interface enabling general-purpose agents; skills package procedural knowledge so anyone can extend agent capabilities without rebuilding the agent itself.

**Top 3 Takeaways**:
1. "Stop building agents, start building skills"—skills are organized folders that package domain expertise for any general agent
2. Skills complement MCP: MCP provides external connectivity, skills provide procedural expertise for orchestrating workflows
3. Skills enable continuous learning—anything Claude writes can be efficiently used by its future self, making memory tangible and transferable

---

## 📋 Key Takeaways

### Main Arguments

- **Code as Universal Interface**: After building Cloud Code, Anthropic realized coding agents are actually general-purpose agents. Generating a financial report involves API calls, file organization, Python analysis, and document synthesis—all through code. Core scaffolding shrinks to "just bash and file system."

- **The Expertise Problem**: Agents are "like Mahesh—brilliant but lack expertise." They can do amazing things with guidance but lack domain context upfront, don't absorb expertise well, and don't learn over time. The question isn't capability but consistent, domain-appropriate execution.

- **Skills = Organized Folders**: Skills are "organized collections of files that package composable procedural knowledge for agents." The simplicity is deliberate—anyone with a computer (human or agent) can create and use them. Compatible with Git versioning, Google Drive, zip sharing.

- **Scripts as Tools**: Traditional tools have problems—poor instructions, unmodifiable when the model struggles. Code is self-documenting, modifiable, and lives in the file system until needed. Example: Claude kept writing the same Python script for slide styling, so they saved it as a reusable tool within a skill.

- **Progressive Disclosure**: Skills protect context windows through progressive disclosure. Only metadata (indicating skill existence) loads initially. When needed, the agent reads skill.md for core instructions and directory structure, accessing additional content on-demand. This enables hundreds of skills to be available simultaneously.

- **MCP + Skills Complementarity**: MCP servers provide connectivity to external data and tools; skills provide expertise for orchestrating workflows. Developers build skills that stitch together multiple MCP tools. "MCP is providing the connection to the outside world while skills are providing the expertise."

- **Non-Technical Skill Builders**: Early validation shows finance, recruiting, accounting, and legal professionals creating skills. Skills make general agents accessible for non-coding work, extending agents for day-to-day tasks without technical expertise.

### Announcements & Demos

- **Skills Ecosystem Launch**: Five weeks old at time of talk, already thousands of skills in ecosystem split across foundational, third-party, and enterprise categories

- **Foundational Skills**: Anthropic-built document skills for creating/editing professional office documents

- **Partner Integrations**:
  - **Cadence**: Scientific research skills for EHR data analysis and Python bioinformatics libraries
  - **Browserbase**: Skill for Stagehand (open-source browser automation) enabling web navigation
  - **Notion**: Skills for deep research across entire Notion workspaces

- **Enterprise Adoption**: Fortune 100 companies using skills to teach agents organizational best practices and internal software usage. Large developer productivity teams (serving thousands/tens of thousands of developers) deploying skills for code style best practices

- **Vertical Launches**: Immediately after skills launch, Anthropic released financial services and life sciences offerings with domain-specific MCP servers and skill sets

- **Skill Creator Skill**: Claude can create skills using the "skill creator skill"—meta-capability for self-improvement

### Technical Details

- **Skill Structure**:
  - Root: `skill.md` containing metadata, core instructions, and folder directory
  - Scripts/tools: Python, bash, or other executables
  - Assets: Files, binaries, packages as needed
  - Progressive disclosure: only metadata shown at runtime, full content read on-demand

- **Agent Architecture** (converging pattern):
  - Agent loop managing model context (tokens in/out)
  - Runtime environment with file system + code execution
  - MCP servers for external connectivity
  - Skills library (hundreds/thousands) available at runtime

- **Future Roadmap** (open questions):
  - Testing and evaluation for skills
  - Tooling for ensuring correct skill loading/triggering
  - Output quality measurement for skill-equipped agents
  - Versioning with clear lineage over time
  - Explicit skill dependencies (other skills, MCP servers, packages)

- **Computing Analogy Stack**:
  - Models = Processors (massive investment, immense potential, limited standalone value)
  - Agent runtime = Operating System (orchestrating processes, resources, data around the processor)
  - Skills = Applications (where domain expertise and unique perspectives get encoded)

---

## 💡 Notable Quotes

> "We used to think agents in different domains will look very different... What we realize is that code is not just a use case, but a universal interface to the digital world."

> "Who do you want doing your taxes? Is it gonna be Mahesh, the 300 IQ mathematical genius, or is it Barry, an experienced tax professional? I would pick Barry every time. Agents today are a lot like Mahesh. They're brilliant, but they lack expertise."

> "In other words, they're folders. This simplicity is deliberate. We want something that anyone, human or agent, can create and use as long as they have a computer."

> "MCP is providing the connection to the outside world while skills are providing the expertise."

> "When someone joins your team and starts using Claude for the first time, it already knows what your team cares about. It knows about your day-to-day and it knows about how to be most effective for the work that you're doing."

> "We think it's time to stop rebuilding agents and start building skills instead."

---

## 🔮 Implications & Predictions

**For Developers**: 
Stop building specialized agents from scratch. Instead, contribute skills to extend general-purpose agents. If you're writing the same code repeatedly, save it as a skill. Version your skills in Git. Focus on encoding domain expertise in a portable format rather than building bespoke agent scaffolding. The skill creator capability means you can use Claude to help build skills for your own workflows.

**For AI Tool Builders**: 
The MCP + Skills architecture creates clear integration opportunities. Build MCP servers for connectivity, then build skills that demonstrate effective workflows with your tools (like Browserbase did with Stagehand). Skills become a distribution channel for teaching agents to use your products effectively. Consider contributing foundational skills that expand agent capabilities in your domain.

**For Engineering Leaders**: 
Skills offer a scalable way to deploy organizational knowledge. Developer productivity teams can encode code style, best practices, and internal tool usage into skills that all developers' Claude instances inherit. New employees get pre-trained Claude access. Fortune 100 companies are already pursuing this—treating skills as institutional knowledge capture. Consider how skills could standardize your team's AI-augmented workflows.

**Contrarian/Surprising Takes**: 
- Skills are intentionally "just folders"—rejecting complexity in favor of maximum accessibility
- Non-technical professionals (finance, legal, recruiting) are already building skills—not just developers
- Agent customization is shrinking: core scaffolding = "just bash and file system" across domains
- Skills explicitly designed for continuous learning: Claude on day 30 should be better than Claude on day 1
- The vision positions skills as potentially weeks/months of development effort—not just prompts, but maintained software

---

## 🔗 Cross-Talk Connections

- **Directly referenced by**: Talk D2-02 (swyx) - swyx mentioned this as the "Skills Not Agents" Anthropic talk in his keynote, describing the paradigm shift
- **Agrees with**: Talk D1-02 (Katelyn Lesse, Anthropic) - Both emphasize Claude running code autonomously and MCP integration; Skills extends the context management story
- **Extends**: Talk D1-02 (Katelyn Lesse, Anthropic) - Lesse covered MCP and context management; this talk adds Skills as the expertise layer that complements MCP's connectivity
- **Agrees with**: Talk D1-06 (Bill Chen & Brian Fioca, OpenAI) - Both emphasize harness/scaffolding as the hard part; Skills simplifies the harness problem by providing reusable, portable expertise
- **Contrasts with**: Talk D1-03 (Michele Catasta, Replit) - Replit builds purpose-built autonomy for non-technical users; Anthropic argues for general agents extended via skills—different philosophies on specialization
- **Agrees with**: Talk D1-19 (Dan Shipper, Every) - Both describe compounding value: Shipper's "codify knowledge into prompts," Anthropic's "collective and evolving knowledge base of capabilities"
- **Related themes**: General-purpose vs specialized agents (D1-03), context engineering (D2-02, D1-02), enterprise AI deployment (D1-07, D1-13)

---

## 🏷️ Search Keywords

`Barry Zhang` `Mahesh Murag` `Anthropic` `skills` `Claude Code` `MCP` `Model Context Protocol` `agent architecture` `procedural knowledge` `general-purpose agents` `domain expertise` `enterprise AI` `progressive disclosure` `continuous learning` `folder-based knowledge`

---

*Summary generated as part of AIE CODE 2025 phased analysis*
