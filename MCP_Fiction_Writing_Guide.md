# MCP Guide for Fiction Writing: Creative Writing Projects in Cursor

**For:** Fiction novel writing (10-novel contract)  
**Focus:** Discovery, research, architecture, writing, editing, rewriting, and selecting the best writing for final novels  
**Context:** Using Cursor with Claude for creative collaboration; identifying MCPs that support the full journey—even when used unconventionally

---

## Part 1: Fiction-Writing Use Cases for Each MCP

### Cognee MCP
**Fiction Use:** Cognee MCP is among the most powerful tools for novelists: it stores your characters, plot threads, world-building details, and decisions across sessions and books. Claude can query "What did we establish about the magic system in Book 2?" or "Which characters have appeared in both timelines?" and get grounded answers from your knowledge graph. For a 10-novel series, this becomes essential—continuity, foreshadowing, and callbacks stay consistent without you manually searching. Unconventionally, you can treat each novel as a subgraph and query cross-book relationships.

**API/Registration:** Self-hosted via Docker (no API key) or hosted OpenMemory; some Cognee setups may require registration.

---

### Sequential Thinking MCP
**Fiction Use:** Sequential Thinking MCP excels at complex plot and structure work: you can ask Claude to "break down the heist sequence into steps, then revise step 3 when we realize the guard schedule changes," or "branch this scene into two alternate outcomes and evaluate which fits the character arc." It supports iterative refinement—ideal for outlining, restructuring acts, and exploring alternate plot paths. For a 10-novel architecture, use it to map series-level arcs (Book 1 sets up X, Book 5 pays off Y) with revision and branching. It mirrors how writers think: draft, revise, consider alternatives.

**API/Registration:** Official MCP reference server; no API key. Install via npm or Docker.

---

### Fireproof MCP
**Fiction Use:** Fireproof MCP stores JSON documents with live sync—perfect for character sheets, scene summaries, timeline events, and draft snippets. You can keep a "best-of" document per novel: as you write and edit, Claude writes standout passages to Fireproof; later, you query "show me the best dialogue from Book 3" when assembling the final manuscript. It also works for continuity: store "Character X said Y in Chapter 12" so Claude can avoid contradictions. Unconventionally, use it as a lightweight, queryable scratchpad for ideas that don't fit in your main outline.

**API/Registration:** Open source; no API key. Local or syncable storage.

---

### Knowledge Graph MCP
**Fiction Use:** Knowledge Graph MCP (Neo4j, PuppyGraph, etc.) is ideal for mapping character relationships, plot dependencies, and world-building. Claude can query "Who influenced the protagonist before the midpoint?" or "Which locations connect to the antagonist's backstory?" For a 10-novel series, the graph becomes your series bible: entities (characters, places, events) and edges (relationships, causality). Unconventionally, use it for "narrative graph" analysis—find orphan subplots, overused connections, or underdeveloped threads. Great for discovery during architecture.

**API/Registration:** Requires graph database backend (Neo4j, PuppyGraph, etc.); API/credentials for the DB.

---

### Zen MCP
**Fiction Use:** Zen MCP lets Claude orchestrate multiple models in one thread—use GPT for high-level plot brainstorming, Gemini for long-context scene analysis, and Claude for prose refinement. For fiction, you can "have Claude outline the chapter, Gemini flag pacing issues across the full manuscript, and O3 validate the logic of the twist." Each model brings different strengths; Zen keeps context shared so you don't lose threads. Unconventionally, treat it like a writing room: different "voices" (models) debate structure or style before you commit.

**API/Registration:** Requires API keys for each model provider (Anthropic, Google, OpenAI, etc.).

---

### PAL MCP
**Fiction Use:** PAL MCP (Provider Abstraction Layer) is similar to Zen: one client, many models. Use it when one model's context fills—hand off to Gemini's 1M-token window for full-manuscript analysis—or assign tasks by strength (e.g., local Llama for sensitive early drafts, GPT for creative brainstorming). For a 10-novel project, PAL helps you "route" tasks: research and world-building to one model, prose polish to another. Unconventionally, use it to compare how different models would rewrite a scene and pick the best elements.

**API/Registration:** Requires API keys for each provider (OpenAI, Google, Anthropic, Azure, Ollama, etc.).

---

### Anki MCP
**Fiction Use:** Anki MCP turns your flashcard app into a continuity and vocabulary tool. Create decks for character facts ("Sarah's mother died when she was 12"), timeline events ("The treaty was signed in autumn"), invented words, and foreign phrases. Claude can add cards as you establish facts and quiz you (or itself, via retrieval) to maintain consistency. Unconventionally, use Anki for "scene cards"—one card per scene with key beats; shuffle to check if the story works in different orders. Great for research too: facts about historical periods, science, or cultures.

**API/Registration:** Requires Anki desktop + AnkiConnect; no external API. Local only.

---

### Style Emulation MCP
**Fiction Use:** Style Emulation MCP (or equivalent prompt/resource-based setup) helps Claude match a target prose style. Provide samples of your voice, favorite authors, or a style guide; the MCP serves them as context so Claude rewrites in that style. For a 10-novel series, consistency of voice is critical—Books 1 and 10 should feel like the same author. Unconventionally, use it to "test" different POVs: first-person vs. third limited, present vs. past tense, by feeding exemplars. Also useful for genre shifts (e.g., thriller vs. literary) within the same series.

**API/Registration:** Depends on implementation; often custom prompts/resources, may not need API.

---

### Elasticsearch Memory MCP
**Fiction Use:** Elasticsearch Memory MCP turns your drafts, notes, and research into a searchable corpus. Claude can "find all mentions of the dagger" or "show me scenes where the protagonist doubts herself" across hundreds of files. For editing and rewriting, this is powerful: identify recurring phrases, track motif usage, and ensure callbacks land. Unconventionally, use it for "theme mining"—search for emotional keywords to see if your themes are distributed well. Requires ingesting your manuscript and notes into Elasticsearch.

**API/Registration:** Requires Elasticsearch instance (self-hosted or Elastic Cloud); credentials for the cluster.

---

### Text-to-Speech MCP
**Fiction Use:** Text-to-Speech MCP reads your prose aloud—essential for catching clunky dialogue, repeated words, and rhythm issues. Claude can send a scene to TTS; you listen while editing. For a 10-novel project, use it for "ear checks" on key scenes before finalizing. Unconventionally, use different voices for different characters when reviewing dialogue to ensure each sounds distinct. Also valuable for accessibility if you prefer listening over reading during revision.

**API/Registration:** Depends on provider: Hume, OpenAI, Google TTS—all require API keys/registration.

---

### Multi-Agent Debate MCP
**Fiction Use:** Multi-Agent Debate MCP runs multiple models (e.g., Claude, Codex, GPT) in parallel to "review" a scene or chapter from different angles: one focuses on prose, one on plot logic, one on character consistency. Results are merged with severity levels. For fiction, treat it like a beta-reader panel: "Have these three models review Chapter 7 for pacing and continuity." Unconventionally, use it for contentious decisions—e.g., "Should the protagonist forgive the antagonist here?"—and see how different "readers" argue. Helps surface blind spots.

**API/Registration:** Requires API keys for each model (Claude, Codex, etc.).

---

### n8n MCP
**Fiction Use:** n8n MCP connects Cursor to n8n workflows. Set up automations: daily writing reminders, backup drafts to cloud storage, or "when I tag a scene 'revise,' create a Linear issue." For a 10-novel project, use n8n to orchestrate your process: weekly summaries of progress, notifications when you hit word-count milestones, or syncing outlines between Notion and Cursor. Unconventionally, use it to trigger "Claude check-ins"—e.g., "Every Sunday, ask Claude to summarize the week's work and suggest next steps."

**API/Registration:** Requires n8n instance (self-hosted or n8n cloud); may need API keys for connected services.

---

### Pattern Finder MCP
**Fiction Use:** Pattern Finder MCP (or equivalent) can scan your manuscript for repetitive phrases, overused words, and structural patterns. Claude uses it to report "You've used 'suddenly' 47 times" or "These three scenes have identical openings." For editing and picking the best writing, this is invaluable—identify weak spots and variety issues. Unconventionally, use it for "motif auditing": search for symbols or themes to ensure they're neither overused nor forgotten. Complements Style Emulation for consistency.

**API/Registration:** Depends on implementation; custom tools may not need external API.

---

### ADHD Focus Guardian MCP
**Fiction Use:** ADHD Focus Guardian MCP (conceptual/accessibility) helps with focus blocks and task breakdown. For long-form writing, you can ask "Break this chapter into 5 focus blocks of 25 minutes each" or "What's the smallest next step I can take?" It reduces overwhelm on a 10-novel contract—one book, one act, one scene at a time. Unconventionally, use it for "writing sprints" integrated with Claude: start a block, write with Claude, end the block and get a brief summary. Supports sustained creative flow.

**API/Registration:** No widely documented implementation; if custom, likely minimal.

---

### Explicit Rules Engine MCP (ASD Support)
**Fiction Use:** Explicit Rules Engine MCP (conceptual) enforces clear, predictable structure in Claude's responses—numbered steps, explicit "what happens next," reduced ambiguity. For fiction, this helps with outlining and revision feedback: "List the 5 changes needed in this order" or "State exactly which sentence should be cut and why." Writers who benefit from explicit structure (including some ASD writers) get more actionable, less vague feedback. Unconventionally, use it to ensure Claude's critique follows a consistent format (e.g., always: issue → location → suggestion).

**API/Registration:** Conceptual; no standard implementation found.

---

### Visual Thinking MCP
**Fiction Use:** Visual Thinking MCP (or vision-capable MCP) can analyze images—storyboards, character sketches, maps, mood boards. Claude can "read" a hand-drawn timeline or a map of your world and incorporate it into outlines or descriptions. For a 10-novel fantasy series, maps are critical; feeding them to Claude ensures consistency. Unconventionally, use it to "describe this painting in my prose style" for atmospheric reference, or to extract structure from a visual outline (e.g., a flowchart of plot).

**API/Registration:** Depends on implementation; vision models often require API keys (OpenAI, Anthropic, etc.).

---

### Emergent Memory MCP
**Fiction Use:** Emergent Memory MCP (conceptual) would infer preferences from your behavior—e.g., you often ask for "tighter" prose, so it starts defaulting to that. For fiction, this could mean Claude gradually learns your pacing preferences, pet phrases to avoid, or structural tendencies. Unconventionally, it could "emerge" a series bible from implicit patterns in your edits rather than explicit notes. Currently more conceptual than a specific product.

**API/Registration:** Conceptual; no standard implementation.

---

### Peer Collaboration MCP / Context-Aware MCP
**Fiction Use:** Peer Collaboration MCP (Context-Aware MCP) allows multiple tools to share context—e.g., Notion outline, Google Drive drafts, and Cursor all see the same "current state." For fiction, this reduces redundancy: if you update a character sheet in Notion, Claude in Cursor knows without re-fetching. For a 10-novel project with many tools, shared context prevents drift. Unconventionally, use it so that research (Brave Search), outline (Notion), and draft (Cursor) stay aligned in one session.

**API/Registration:** Depends on implementation; research projects exist, products may vary.

---

### Self-Modification MCP
**Fiction Use:** Self-Modification MCP (conceptual) would let Claude adjust its own instructions or prompts based on your feedback. For fiction, you could say "From now on, when critiquing dialogue, always note if it advances character or plot" and have that persist. Unconventionally, use it to "evolve" your writing assistant: as your style and process change across 10 novels, the assistant adapts its critique framework. Currently conceptual; similar effects possible with manual prompt updates.

**API/Registration:** Conceptual; no standard implementation.

---

### Intelligence Emergence MCP
**Fiction Use:** Intelligence Emergence MCP (conceptual) describes systems where higher-level behavior emerges from multiple agents/tools. For fiction, your "stack" (Cognee + Sequential Thinking + Multi-Agent Debate + Style Emulation) could produce emergent capabilities—e.g., nuanced continuity checks or cross-novel theme analysis that no single tool provides. Unconventionally, the "emergence" is your workflow: the combination of MCPs creates a writing system greater than the sum of parts.

**API/Registration:** Conceptual; refers to architecture, not a single product.

---

### Cognitive Architectures MCP
**Fiction Use:** Cognitive Architectures MCP (conceptual) would provide structured reasoning—goal stacks, working memory, stepwise planning. For fiction, Claude could maintain "current goal: revise Act 2 for pacing" and "working memory: key scenes from Act 1 that set up Act 2" across a long session. Unconventionally, use it for "cognitive modeling" of characters—simulate a character's goals and beliefs to check if their actions are consistent. Currently conceptual.

**API/Registration:** Conceptual; no standard implementation.

---

### Voice Amplification MCP
**Fiction Use:** Voice Amplification MCP (conceptual/accessibility) would boost or clarify your voice input when dictating to Claude. For fiction, dictation is common—voice amplification helps in noisy environments or for users with quieter speech. Unconventionally, use it when "talking through" plot problems aloud; clearer input means better Claude collaboration. Accessibility-focused; limited fiction-specific use beyond dictation.

**API/Registration:** Conceptual; no standard implementation found.

---

### MindsDB MCP
**Fiction Use:** MindsDB MCP federates queries across data sources. For fiction, you could connect your outline (e.g., in a spreadsheet), character database, and research notes, and ask "Which characters appear in scenes set in Paris?" or "Join my timeline with my research on 1920s fashion." Unconventionally, use it to run SQL-like queries over your series metadata—useful for architecture and continuity at scale. Requires setting up data sources.

**API/Registration:** Requires MindsDB instance (Docker or cloud); setup for data sources.

---

### Apache Airflow MCP
**Fiction Use:** Apache Airflow MCP orchestrates scheduled workflows. For fiction, you could schedule "weekly manuscript backup," "monthly progress report," or "reminder to submit draft to editor." Unconventionally, use it to trigger "Claude analysis" on a schedule—e.g., every Friday, run a workflow that pulls your latest draft and produces a pacing report. Overkill for most writers; n8n is lighter. Only useful if you already use Airflow for other work.

**API/Registration:** Requires Apache Airflow instance; API URL and credentials.

---

### YepCode MCP
**Fiction Use:** YepCode MCP runs code in YepCode's environment. For fiction, you could run scripts that: batch-convert drafts to different formats, extract word counts per chapter, or run custom analysis (e.g., sentence-length distribution). Unconventionally, use it to automate "manuscript health checks"—e.g., a script that flags chapters over a certain length or under a target. Useful if you want programmatic automation without local dev setup.

**API/Registration:** Requires YEPCODE_API_TOKEN; YepCode account.

---

### Dagger Container Use MCP
**No Fiction Use:** Dagger Container Use MCP provides isolated containerized development environments for coding. It has no meaningful application to fiction writing—you're not compiling code or running test suites. Skip.

**API/Registration:** Dagger/container runtime; not relevant for fiction.

---

### Ghidra MCP
**No Fiction Use:** Ghidra MCP enables reverse engineering of binaries—decompilation, analysis of executable code. It has no application to fiction writing. Skip.

**API/Registration:** Ghidra + MCP bridge; not relevant for fiction.

---

### Optuna MCP
**No Fiction Use:** Optuna MCP is for hyperparameter optimization in machine learning—tuning model parameters. Fiction has no hyperparameters to optimize. Skip.

**API/Registration:** Open source; not relevant for fiction.

---

### Arize Phoenix MCP
**No Fiction Use:** Arize Phoenix MCP provides tracing and observability for MCP client-server calls—useful for developers debugging AI pipelines. For fiction writing, there's no practical benefit unless you're building custom MCP servers. Skip.

**API/Registration:** Phoenix instance; developer-focused, not writer-focused.

---

## Part 2: Ranking—Most to Least Helpful for Fiction Writing

| Rank | MCP | Rationale |
|------|-----|-----------|
| 1 | **Cognee MCP** | Persistent knowledge graph for characters, plot, world; essential for 10-novel continuity |
| 2 | **Sequential Thinking MCP** | Plot breakdown, revision, branching; mirrors writer cognition |
| 3 | **Book Series MCP** *(see Part 4)* | Purpose-built for series: character, plot, world, continuity |
| 4 | **Fireproof MCP** | Lightweight store for drafts, best-of, continuity notes |
| 5 | **Knowledge Graph MCP** | Character/plot relationship mapping; series-level architecture |
| 6 | **Mem0 / OpenMemory** *(see Part 4)* | Persistent memory across sessions; continuity and preferences |
| 7 | **Notion MCP** *(see Part 4)* | Outlines, research, databases; familiar for many writers |
| 8 | **Anki MCP** | Vocabulary, character facts, timeline; consistency via retrieval |
| 9 | **Zen MCP** | Multi-model orchestration; different strengths per task |
| 10 | **PAL MCP** | Multi-provider routing; long-context, task-specific models |
| 11 | **Style Emulation MCP** | Voice consistency across novels |
| 12 | **Google Drive MCP** *(see Part 4)* | Drafts, research files; ubiquitous storage |
| 13 | **Elasticsearch Memory MCP** | Full-text search across manuscripts; editing and motif tracking |
| 14 | **Text-to-Speech MCP** | Ear-check for prose; accessibility |
| 15 | **Multi-Agent Debate MCP** | Multi-perspective review; beta-reader simulation |
| 16 | **Linear MCP** *(see Part 4)* | Project management for 10-novel contract |
| 17 | **GitHub MCP** *(see Part 4)* | Version control for drafts; history and branching |
| 18 | **Brave Search / Exa MCP** *(see Part 4)* | Research and discovery |
| 19 | **n8n MCP** | Workflow automation; reminders, backups |
| 20 | **Pattern Finder MCP** | Repetition, overuse; editing support |
| 21 | **ADHD Focus Guardian MCP** | Focus blocks; task breakdown |
| 22 | **Figma MCP** *(see Part 4)* | Storyboards, character boards, maps |
| 23 | **Explicit Rules Engine MCP** | Explicit structure; actionable feedback |
| 24 | **Visual Thinking MCP** | Image analysis; maps, storyboards |
| 25 | **Puppeteer MCP** *(see Part 4)* | Research scraping; limited fiction use |
| 26 | **Emergent Memory MCP** | Conceptual; preference learning |
| 27 | **Peer Collaboration MCP** | Shared context; multi-tool alignment |
| 28 | **Self-Modification MCP** | Conceptual; adaptive prompts |
| 29 | **Intelligence Emergence MCP** | Conceptual; workflow emergence |
| 30 | **Cognitive Architectures MCP** | Conceptual; structured reasoning |
| 31 | **Voice Amplification MCP** | Accessibility; dictation support |
| 32 | **MindsDB MCP** | Data federation; metadata queries |
| 33 | **YepCode MCP** | Script automation; niche |
| 34 | **Apache Airflow MCP** | Scheduling; overkill for most writers |
| 35 | **Dagger Container Use MCP** | No fiction use |
| 36 | **Ghidra MCP** | No fiction use |
| 37 | **Optuna MCP** | No fiction use |
| 38 | **Arize Phoenix MCP** | No fiction use |

---

## Part 3: Top 15 MCPs for Fiction Writing NOT on the Original List

| # | MCP | Fiction Use | API/Registration |
|---|-----|-------------|------------------|
| 1 | **Book Series MCP** | Character, plot, world-building, research, continuity; PostgreSQL backend | PostgreSQL; Docker or env setup |
| 2 | **Mem0 / OpenMemory MCP** | Persistent memory; cross-session continuity, preferences | Hosted: app.openmemory.dev; Local: self-host, no API |
| 3 | **Notion MCP** | Outlines, research DBs, character wikis; OAuth, no token management | OAuth via Notion; Notion account |
| 4 | **Google Drive MCP** | Drafts, research files; Docs→Markdown, Sheets for metadata | Google Cloud project; OAuth; Drive API enabled |
| 5 | **Brave Search MCP** | Research, fact-checking, discovery | Brave Search API key (free tier: 2,000 queries/mo) |
| 6 | **Exa MCP** | Deep research, content discovery | Exa account; mcp.exa.ai endpoint |
| 7 | **Figma MCP** | Storyboards, character boards, maps, mood boards | Figma account; OAuth or access token |
| 8 | **GitHub MCP** | Version control for drafts; branch per novel, PR for edits | GitHub account; OAuth or PAT |
| 9 | **Linear MCP** | Project management; issues per novel/chapter; roadmap for 10 novels | Linear API token (Settings > Personal API Keys) |
| 10 | **Puppeteer MCP** | Scrape research sites, capture references | Node.js; Puppeteer; no external API |
| 11 | **Filesystem MCP** | Local file access; read/write drafts, outlines | None; local only |
| 12 | **Fetch MCP** | Fetch web content for research | None or minimal |
| 13 | **Slack MCP** | Team collaboration; share scenes, get feedback | Slack app; OAuth |
| 14 | **PostgreSQL MCP** | Custom DB for characters, timeline, metadata | PostgreSQL instance; credentials |
| 15 | **Obsidian MCP** *(if available)* | Local knowledge base; links, graph view | Depends on implementation; Obsidian vault |

---

## Part 4: API and Registration Requirements (Summary)

| MCP | Requires API / Registration |
|-----|-----------------------------|
| Cognee MCP | Self-host: no. Hosted: possibly |
| Sequential Thinking MCP | **No** |
| Fireproof MCP | **No** |
| Knowledge Graph MCP | **Yes** – graph DB (Neo4j, etc.) |
| Zen MCP | **Yes** – Anthropic, Google, OpenAI, etc. |
| PAL MCP | **Yes** – multiple providers |
| Anki MCP | **No** – Anki + AnkiConnect only |
| Style Emulation MCP | Depends on impl.; often **No** |
| Elasticsearch Memory MCP | **Yes** – Elasticsearch instance |
| Text-to-Speech MCP | **Yes** – Hume, OpenAI, or Google |
| Multi-Agent Debate MCP | **Yes** – each model provider |
| n8n MCP | **Yes** – n8n instance |
| Book Series MCP | **Yes** – PostgreSQL |
| Mem0 / OpenMemory | Hosted: registration; Local: **No** |
| Notion MCP | **Yes** – OAuth (Notion account) |
| Google Drive MCP | **Yes** – Google Cloud + OAuth |
| Brave Search MCP | **Yes** – Brave Search API key |
| Exa MCP | **Yes** – Exa account |
| Figma MCP | **Yes** – Figma account |
| GitHub MCP | **Yes** – GitHub OAuth or PAT |
| Linear MCP | **Yes** – Linear API token |
| Puppeteer MCP | **No** – local Node/Puppeteer |
| Filesystem MCP | **No** |
| MindsDB MCP | **Yes** – MindsDB instance |
| Apache Airflow MCP | **Yes** – Airflow instance |
| YepCode MCP | **Yes** – YEPCODE_API_TOKEN |

---

## Part 5: Incorporating Linear Within the Cursor Ecosystem

**Linear MCP** integrates directly with Cursor: once configured, Claude (Composer) can create issues, update statuses, assign work, and comment—all from natural language prompts.

**Fiction-Writing Workflow with Linear:**

1. **Project structure:** Create a Linear project per novel (Novel 1–10) or one project with cycles for each book.
2. **Issues as units of work:** Each issue = chapter, act, or "revise Scene 7." Use labels: `architecture`, `draft`, `edit`, `rewrite`, `final-select`.
3. **Roadmap:** Use Linear's roadmap for the 10-novel contract—milestones per book, deadlines, dependencies (e.g., "Book 2 outline blocks Book 1 final edit").
4. **Cursor + Linear:** In Cursor, prompt: "Create a Linear issue: 'Revise Chapter 12 for pacing' in Novel 3, assign to me." Or "What are my open issues for Novel 5 this week?"
5. **Integration path:** Install Linear MCP via Smithery (`npx -y @smithery/cli install @tacticlaunch/mcp-linear --client cursor`) or add to `~/.cursor/mcp.json` with your Linear API token.

**Setup:** Generate a Linear API token at Settings → Security & access → Personal API Keys. Linear MCP is Composer-only in Cursor.

**Tip:** Use Linear for "what to do" and Cursor + Claude for "how to do it." Linear tracks the 10-novel architecture; Cursor + MCPs handle the actual writing, research, and continuity.

---

*Document created for fiction writers using Cursor. For the latest MCP setup and compatibility, check each project's official docs.*
