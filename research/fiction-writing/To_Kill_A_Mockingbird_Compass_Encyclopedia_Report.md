# Fiction Writing MCP Guide: Compass Writing System & To Kill A Mockingbird — Encyclopedic Edition

**Scope:** Writing a single creative fiction novel within the Compass Writing System and its haunting ecosystem, with full orchestration of MCPs, Cursor tools, sub-agents, and cloud agents.  
**Teaching Example:** *To Kill A Mockingbird* by Harper Lee (Southern Gothic: Scout Finch, Atticus Finch, Jem, Boo Radley, Tom Robinson, Maycomb Alabama 1930s, trial, racism, innocence, moral courage, "climbing into his skin," "it's a sin to kill a mockingbird").  
**Purpose:** Choose and use every available MCP and Cursor capability specifically for one novel.  
**Practical:** Install commands, API notes, and copy-paste examples throughout.  
**Teaching device:** *To Kill A Mockingbird* is the reference novel used to explain the system; you swap in your own novel and apply the same structure and workflow.

This report runs Harper Lee’s *To Kill A Mockingbird* through the same exercise as William Goldman’s *Marathon Man*: every MCP is listed on its own line with detailed examples, no MCPs are combined or skipped, and the full ecosystem is described in complete sentences so you can read how each tool would be used to evaluate and support a single novel.

---

## Part I: Complete MCP List (All MCPs, Separate Lines, No Exclusions) — Detailed To Kill A Mockingbird Use

The following section describes every MCP relevant to fiction writing. Each entry is on its own line with a full explanation of how that MCP would be used when writing or editing a novel like *To Kill A Mockingbird*.

### 1. Knowledge Graph Memory MCP (knowledge-graph-memory)

The Knowledge Graph Memory MCP stores characters, relationships, plot threads, and world-building in a structured graph. For *To Kill A Mockingbird*, you would store Scout Finch as an entity with attributes: narrator, age six to nine, daughter of Atticus, brother Jem, learns empathy and moral courage. You would store Atticus Finch with attributes: lawyer, father, defends Tom Robinson, teaches "climbing into his skin," moral center. You would store Boo Radley with attributes: reclusive neighbor, Arthur Radley, never seen until finale, saves children from Bob Ewell. You would store Tom Robinson with attributes: Black man, wrongly accused of raping Mayella Ewell, convicted, shot escaping prison. When you ask "Who knows Boo Radley saved the children?" the graph returns Scout, Jem, Atticus, Heck Tate—and explicitly excludes the townspeople. When you ask "When did Tom Robinson die relative to the trial verdict?" you get a clear timeline. For "What are Scout's unresolved tensions at the end?" the graph returns the trial's injustice, Jem's broken arm, Boo's revelation, and the loss of innocence. The graph becomes the single source of truth for Maycomb, its characters, and the novel's canonical timeline.

### 2. Sequential Thinking MCP (sequential-thinking, Reference)

The Sequential Thinking MCP forces stepwise reasoning for plot logic and character decisions. For *To Kill A Mockingbird*, when you ask "Why doesn't Atticus tell the children to stay away from the Radley place?" the MCP breaks it down: Atticus respects privacy; he trusts his children to learn; forbidding them would increase curiosity; the novel's theme of empathy requires Scout and Jem to discover Boo on their own. Each step can be verified against the manuscript. When you ask "Should Heck Tate lie about Bob Ewell's death to protect Boo?" Sequential Thinking lays out: Boo acted in self-defense; publicity would destroy him; the lie serves justice; Scout's "it would be like shootin' a mockingbird" crystallizes the moral logic. The chain of reasoning supports the final choice and reduces plot holes.

### 3. Sequential Thinking Ultra (sequential-thinking-ultra)

Sequential Thinking Ultra adds bias detection and quality metrics. For *To Kill A Mockingbird*, when you ask "Is Atticus's decision to defend Tom Robinson justified?" Ultra explores paths: legal duty, moral imperative, risk to his family, thematic necessity. It scores each path and flags convenience (e.g., does Atticus take the case because it's "obvious" or because the evidence supports it?). For "Should Scout narrate as a child or an adult looking back?" Ultra explores reliability, innocence, and Harper Lee's actual choice, scoring each for consistency with Southern Gothic conventions.

### 4. Sequential Thinking MAS (sequential-thinking-mas)

Sequential Thinking MAS uses five agents—Factual, Emotional, Critical, Creative, Synthesis. For *To Kill A Mockingbird*, when you ask "Should Boo Radley be revealed at the end?" the Factual agent checks timeline (Bob's attack, Heck's cover-up); the Emotional agent evaluates Scout's need for closure and Boo's need for privacy; the Critical agent checks thematic fit ("mockingbird" motif); the Creative agent suggests alternatives (Boo never revealed, Scout only infers); the Synthesis agent combines views. Each agent surfaces issues the others miss.

### 5. Enhanced Sequential Thinking (enhanced-sequential-thinking)

Enhanced Sequential Thinking offers multiple thinking modes. For *To Kill A Mockingbird*, use creative mode to brainstorm alternate endings (Scout meets Boo earlier, Tom Robinson acquitted, Bob Ewell survives); evaluative mode to check consistency (trial timeline, Jem's age, seasonal details); linear mode to verify timeline (summer of the trial, Halloween attack). The system matches reasoning style to the task.

### 6. Cognee MCP (cognee-connections)

Cognee is a graph-RAG system that finds thematic links. For *To Kill A Mockingbird*, it can surface the connection between "climbing into his skin" (empathy), the mockingbird motif (innocence destroyed), and Boo Radley (misunderstood, hunted like a mockingbird). When you ask "How does the mad dog scene connect to the trial?" Cognee traces: Atticus shoots the dog (unwanted role); he must defend Tom (same moral courage); the town relies on him but rejects his stance. It makes symbols and structure explicit.

### 7. Fireproof MCP

Fireproof stores JSON documents with sync. For *To Kill A Mockingbird*, you would store character sheets (Scout's voice, Atticus's speeches, Boo's sparse appearances), scene summaries (trial, Halloween, finale), and "best of" passages (Atticus's closing argument, Scout's "hey Boo"). Query "best empathy scenes" when revising. Store `{ "character": "Boo Radley", "key_detail": "Never seen until finale; saves children; Heck Tate lies to protect him" }` and later query "Show me all Boo scenes" for consistency and pacing.

### 8. Book Series MCP (book-series)

The Book Series MCP tracks characters, plot, and continuity. For *To Kill A Mockingbird*, you would track Scout's arc (innocence to experience), Jem's loss of faith in justice, Atticus's moral consistency, and timeline (summers, trial, Halloween). It maintains character arcs, plot threads, research notes (1930s Alabama, Jim Crow), and continuity across parts.

### 9. Mem0 / OpenMemory MCP (openmemory)

OpenMemory provides persistent memory across sessions. For *To Kill A Mockingbird*, the system remembers that you prefer Lee's spare prose, your pacing choices (trial as centerpiece), and continuity decisions. After you state "Scout's voice should stay childlike even when she understands more," it stores that; later, when editing, the assistant reminds you so the narrator's growth stays subtle.

### 10. Firecrawl MCP (firecrawl)

Firecrawl performs deep web scraping and converts pages to Markdown. For *To Kill A Mockingbird*, use it to research 1930s Alabama, Jim Crow trials, Southern Gothic conventions, Harper Lee's Monroe and Monroeville. A request like "Research Scottsboro Boys trial and Harper Lee" pulls articles for period accuracy and thematic grounding. Convert to Markdown for quick reference when writing the trial and setting.

### 11. DuckDuckGo Search MCP (duckduckgo-search)

DuckDuckGo provides fast, free search. For *To Kill A Mockingbird*, look up "Alabama courthouse 1930s," "Depression-era Maycomb," "mockingbird symbolism Southern literature." A query like "What did a Southern courthouse look like in 1935?" returns facts that keep the trial setting grounded. Free, privacy-focused, rate-limited.

### 12. Brave Search MCP (brave-search)

Brave Search offers another search option with a generous free tier. For *To Kill A Mockingbird*, use it for fact-checking ("Jim Crow laws Alabama 1930s," "Harper Lee biography") when DuckDuckGo is insufficient. Requires BRAVE_API_KEY; 2,000 free queries per month.

### 13. Exa MCP (exa)

Exa provides semantic search for deeper research. For *To Kill A Mockingbird*, queries like "Southern Gothic innocence and experience" or "first-person child narrator literary technique" return contextually relevant results. "Find scholarly articles on To Kill A Mockingbird and moral courage" surfaces criticism and analysis to inform revision and thematic clarity.

### 14. Perplexity MCP (perplexity)

Perplexity adds web-augmented, synthesized answers. For *To Kill A Mockingbird*, ask "What was the cultural impact of To Kill A Mockingbird on civil rights?" or "How did Harper Lee's childhood influence the novel?" and receive summarized, cited answers for research and market context.

### 15. Zen MCP / PAL MCP (zen-orchestrator)

Zen routes work across multiple models. For *To Kill A Mockingbird*, request "dialogue between Scout and Atticus about the trial"; Zen routes dialogue to a model suited for it, long-manuscript pacing to another, and synthesis to Claude. You leverage each model's strengths within one request.

### 16. Style Emulation MCP (style-emulation)

The Style Emulation MCP matches prose to a target style. For *To Kill A Mockingbird*, feed samples of Harper Lee's prose—spare, first-person child narrator, Southern rhythm—create a profile, and compare your draft. The system returns scores and rewrites: "Soften adult retrospection; keep Scout's voice naive; match Lee's understatement."

### 17. Dennis Lehane Style MCP (dennis-lehane-style)

The Dennis Lehane Style MCP encodes a specific author's voice. For *To Kill A Mockingbird*, if you are writing Southern or moral-noir, Lehane's techniques (moral ambiguity, place as character) can complement Lee's. It expands the palette of style references.

### 18. Google Drive / Google Workspace MCP (google-workspace)

The Google Workspace MCP gives Cursor access to cloud documents. For *To Kill A Mockingbird*, keep a Drive folder with timelines, Atticus's closing argument drafts, and research. "Pull my outline for Part Two from Google Drive" fetches the document for drafting the trial and aftermath.

### 19. GitHub MCP (github)

The GitHub MCP integrates version control. For *To Kill A Mockingbird*, use a repository (e.g., `to-kill-a-mockingbird`) with main holding the current draft and branches for alternate structures ("trial from Jem's POV," "Boo revealed earlier"). "Create a branch for the alternate ending where Tom is acquitted" lets you compare without losing the main draft.

### 20. GitKraken MCP (gitkraken)

GitKraken provides Git workflows via its desktop app. For *To Kill A Mockingbird*, use it for branches, commits, diffs, and worktrees—complementing GitHub MCP for local-first version control and narrative branching.

### 21. Linear MCP (linear)

Linear provides project management. For *To Kill A Mockingbird*, create issues: "Revise trial scene for pacing," "Fact-check 1930s Alabama," "Pacing pass Part One." Use a roadmap for milestones: Outline, Draft Part One, Draft Part Two, First Revision, Beta. "Create an issue: Revise Boo reveal for thematic clarity" keeps revision trackable.

### 22. Slack MCP (slack)

The Slack MCP connects Cursor to Slack. For *To Kill A Mockingbird*, post progress updates, share snippets with beta readers, or trigger notifications when a Linear issue is closed or a draft milestone is reached.

### 23. AssemblyAI MCP (assemblyai)

AssemblyAI provides transcription and optionally text-to-speech. For *To Kill A Mockingbird*, send the trial scene or Atticus's closing argument to TTS and listen for rhythm and dialogue. Transcribe voice notes if you dictate ideas. Catches awkward phrasing and flat dialogue.

### 24. Anki MCP (anki-flashcards)

Anki MCP creates flashcards for continuity. For *To Kill A Mockingbird*, cards like "When did Tom Robinson die?" "What is Scout's age at the trial?" "Who knows Boo saved the children?" reinforce consistency. "Atticus's moral stance" → "Defend Tom despite risk; climbing into his skin; it's a sin to kill a mockingbird" reviewed before writing Atticus scenes.

### 25. Walk-This-Way Files MCP (walk-this-way-files)

The Walk-This-Way Files MCP gives Claude read/write access to a specified path (e.g., Walk This Way novel folder). For *To Kill A Mockingbird*, if your novel project lives there, point the MCP at it so Claude can read chapters, character sheets, and research for consistency.

### 26. Tim Cursor Experiment Files MCP (tim-cursor-experiment-files)

The Tim Cursor Experiment Files MCP gives Claude access to the Tim Cursor Experiment folder. For *To Kill A Mockingbird*, if you keep research, outlines, or character sheets there, Claude can read and use them when editing or drafting the novel in a linked project.

### 27. Figma MCP (figma)

Figma MCP allows storyboards and maps. For *To Kill A Mockingbird*, create a map of Maycomb (Finch house, Radley place, courthouse, school), a timeline of events, or a visual outline of the trial. "Generate a storyboard for the Halloween attack" lets Claude use your design for scene blocking and geography.

### 28. n8n MCP (workflow-automation)

The n8n MCP connects Cursor to workflow automation. For *To Kill A Mockingbird*, automate "On save, back up to Drive" or "Every Sunday, send a progress summary." "When I tag a scene 'revise,' create a Linear issue" ties writing to task tracking. Requires N8N_API_KEY if using n8n cloud.

### 29. Pandoc MCP (pandoc)

Pandoc MCP converts Markdown to DOCX, PDF, EPUB. For *To Kill A Mockingbird*, export to DOCX for beta readers or editors, PDF for submission. "Convert my manuscript to DOCX for my editor" produces a formatted document without leaving Cursor.

### 30. Multi-Agent Debate MCP

Multi-Agent Debate runs several models in a "debate" over a choice. For *To Kill A Mockingbird*, run "Should Heck Tate lie to protect Boo?" and receive arguments: legal truth vs. moral protection, Scout's growth, Boo's need for privacy. You choose or synthesize the best reasoning. (Requires multiple model API keys; may need to be added to mcp.json if not present.)

### 31. Pattern Finder MCP

A Pattern Finder detects repetition and overused words. For *To Kill A Mockingbird*, scan for frequency of "mockingbird," "courage," "skin," overused verbs, or similar scene openings. "Find all instances of 'it's a sin'" returns locations so you can trim or amplify for effect. (Custom or community implementation; add to mcp.json if available.)

### 32. Vectara MCP (vectara)

Vectara provides semantic search across the manuscript. For *To Kill A Mockingbird*, queries like "scenes where Scout feels confused" or "passages about Boo Radley" find relevant text without exact phrases. "Find all scenes involving empathy or injustice" returns thematic matches for revision.

### 33. Compass Writing Guides MCP (compass-writing-guides)

The Compass Writing Guides MCP aligns with your story bible and prose DNA. For *To Kill A Mockingbird*, it provides guidance consistent with your Compass setup—Southern Gothic conventions, Harper Lee-style prose, moral-weight structure—so MCP-driven suggestions stay aligned with your north.

### 34. Cursor Workflow Orchestrator MCP (cursor-workflow-orchestrator)

The Cursor Workflow Orchestrator MCP sequences workflows. For *To Kill A Mockingbird*, it can run "First query Memory for character states, then Sequential Thinking on the Heck Tate lie, then Style Emulation for the finale." It ensures the right tools run in the right order.

### 35. Fiction Reverse Engineering MCP (fiction-reverse-engineering)

The Fiction Reverse Engineering MCP breaks down published fiction into structure and technique. For *To Kill A Mockingbird*, reverse-engineer Lee's pacing, use of child narrator, trial structure, and mockingbird motif to inform your own Southern Gothic. Learn from the reference novel consciously.

### 36. Professional Editor MCP (professional-editor)

The Professional Editor MCP provides editorial feedback. For *To Kill A Mockingbird*, send scenes or acts and receive notes on structure, pacing, clarity, continuity—flagging weak transitions, unclear motivation, or pacing issues—so you revise with an editor's eye before a human editor.

### 37. Memorygraph MCP (memorygraph)

Memorygraph offers an alternative memory backend. For *To Kill A Mockingbird*, it can store character states, timeline facts, and prior decisions in a graph. Use alongside Knowledge Graph for redundancy or specialized queries (e.g., long-term author preferences vs. project-specific canon).

### 38. Enhanced MCP Memory MCP (enhanced-mcp-memory)

Enhanced MCP Memory provides extended memory features. For *To Kill A Mockingbird*, it stores character states and continuity decisions with enhanced querying. Complements Knowledge Graph for richer or faster lookups.

### 39. Supermemory MCP (supermemory)

Supermemory offers another persistence backend. For *To Kill A Mockingbird*, it can store story truth, timeline, and prior choices. Use for redundancy or when you want a different memory architecture.

### 40. Scanadi MCP AI Memory (scanadi-mcp-ai-memory)

Scanadi MCP AI Memory uses a database backend (PostgreSQL). For *To Kill A Mockingbird*, it stores character states and plot facts in a structured DB. Use when you want SQL-style queries or integration with other tools. Requires POSTGRES_URI.

### 41. Ultrarag MCP (ultrarag)

Ultrarag provides RAG over your documents. For *To Kill A Mockingbird*, index chapters and research so "What did we establish about Boo Radley in Part One?" retrieves relevant passages and grounds answers in your text.

### 42. Ragenta MCP (ragenta)

Ragenta provides RAG capabilities. For *To Kill A Mockingbird*, use it to retrieve and ground answers in your manuscript—reducing hallucination and keeping suggestions tied to what you have written.

### 43. Scalemcp (scalemcp)

Scalemcp helps scale or manage MCP usage. For *To Kill A Mockingbird*, when running many MCP calls (Memory, Sequential Thinking, Firecrawl, Style Emulation), Scalemcp ensures requests are handled efficiently and within constraints.

### 44. AI Writers Workshop MCP (ai-writers-workshop)

The AI Writers Workshop MCP supports workshop-style writing. For *To Kill A Mockingbird*, it can support alternate openings, character interviews, or scene rewrites from another POV (e.g., Jem's, Atticus's), feeding into the same story truth.

### 45. Open Library MCP (open-library)

The Open Library MCP provides access to book metadata and sometimes full text. For *To Kill A Mockingbird*, look up Lee's works, publication history, or period references (1930s Southern literature) for research and tradition.

### 46. Context7 MCP (context7)

Context7 manages context (windowing, summarization). For *To Kill A Mockingbird*, when chat history grows long, Context7 keeps the most relevant exchanges and decisions in scope so the model does not forget earlier continuity or style choices.

### 47. Supabase MCP (supabase)

The Supabase MCP connects Cursor to Supabase. For *To Kill A Mockingbird*, store outlines, character tables, or research in Supabase and query via the MCP. Provides structured persistence across machines. Requires SUPABASE_ACCESS_TOKEN.

### 48. Puppeteer MCP (puppeteer)

Puppeteer MCP enables browser automation. For *To Kill A Mockingbird*, scrape period-specific sites (1930s Alabama, Scottsboro), fetch maps or courthouse images, or automate fact-checking. Complements Firecrawl and search MCPs.

### 49. Fetch MCP (fetch)

The Fetch MCP performs HTTP requests. For *To Kill A Mockingbird*, fetch research URLs, APIs, or documents. Use for programmatic capture when building research dossiers.

### 50. Getgather MCP (getgather)

Getgather MCP provides gathering or collection capabilities. For *To Kill A Mockingbird*, use it to collect research, references, or notes from various sources into a single place for the agent to access.

### 51. Ebook MCP (ebook)

The Ebook MCP provides access to ebooks. For *To Kill A Mockingbird*, pull quotes from Lee's novel or comparable Southern Gothic works for style reference. Requires EPUB_LIBRARY_PATH.

### 52. Google Books MCP (google-books)

The Google Books MCP provides access to Google Books. For *To Kill A Mockingbird*, look up Lee's novel, criticism, or period works for quotes and research. Requires GOOGLE_API_KEY. (Currently disabled in your config.)

### 53. Goodreads Scraper MCP (goodreads-scraper)

The Goodreads Scraper MCP (via Apify) scrapes Goodreads. For *To Kill A Mockingbird*, gather reader reactions, reviews, or comparative titles for market awareness. Requires APIFY_API_TOKEN. (Currently disabled in your config.)

### 54. Grammarly AI MCP (grammarly-ai)

The Grammarly AI MCP integrates Grammarly for grammar and style. For *To Kill A Mockingbird*, run prose through Grammarly for clarity, tone, and consistency. Requires GRAMMARLY_API_KEY. (Currently disabled in your config.)

### 55. Word Tune MCP (word-tune)

The Word Tune MCP (AI21) offers rewriting and style suggestions. For *To Kill A Mockingbird*, use it for alternative phrasings or tone adjustments. Requires AI21_API_KEY. (Currently disabled in your config.)

### 56. Winston AI MCP (winston-ai)

The Winston AI MCP provides AI detection or writing analysis. For *To Kill A Mockingbird*, use it to check AI-generated content if needed for submission or editorial disclosure. Requires WINSTON_AI_API_KEY. (Currently disabled in your config.)

### 57. Copyscape MCP (copyscape)

The Copyscape MCP checks for plagiarism. For *To Kill A Mockingbird*, run manuscript or excerpts through Copyscape before submission. Requires COPYSCAPE_API_KEY. (Currently disabled in your config.)

### 58. AI Context MCP (ai-context)

The AI Context MCP augments context selection. For *To Kill A Mockingbird*, it helps ensure the right chunks of manuscript, outline, and rules are included in each request so long-form editing stays coherent.

### 59. Saner AI MCP (saner-ai)

The Saner AI MCP provides context validation or sanity checks. For *To Kill A Mockingbird*, it helps keep the model "sane" with respect to your stated goals and story truth across long sessions.

### 60. Vellum MCP (vellum)

The Vellum MCP supports book formatting and export. For *To Kill A Mockingbird*, use it for professional layout and export to ebook/print formats. Requires VELLUM_API_KEY. (Currently disabled in your config.)

### 61. Writer MCP (writer-mcp)

The Writer MCP provides writer-specific workflows (word counts, goals, platform integration). For *To Kill A Mockingbird*, track progress (words per part), set milestones, and keep drafting measurable. Requires POSTGRES_URI and optionally OPENAI_API_KEY.

### 62. YepCode MCP (yepcode)

YepCode generates and runs code. For *To Kill A Mockingbird*, ask for a script that extracts every line of dialogue from your manuscript or builds a timeline from chapter frontmatter. The generated code runs in a sandbox and extends the ecosystem. Requires YEPCODE_API_KEY. (Currently disabled in your config.)

### 63. Toolbox MCP (toolbox)

The Toolbox MCP bundles utilities (file ops, conversions, small automations). For *To Kill A Mockingbird*, use it for ad hoc tasks (merge chapters, convert formats, run one-off checks) when no dedicated MCP exists.

### 64. Clerk MCP (clerk)

The Clerk MCP provides authentication and user management. For *To Kill A Mockingbird*, use it if you build a shared or collaborative writing app. Requires CLERK_SECRET_KEY. (Currently disabled in your config.)

### 65. Sequential Thinking Rust MCP

The Rust implementation of Sequential Thinking provides the same reasoning as Reference but faster. For *To Kill A Mockingbird*, when running analysis across all chapters (timeline, character consistency, plot logic), the Rust version processes the full manuscript in seconds. Returns timeline checks, character consistency, and plot-hole flags. (Add to mcp.json if Rust toolchain available.)

### 66. MCP Mermaid (mcp-mermaid)

The MCP Mermaid MCP generates diagrams. For *To Kill A Mockingbird*, create plot structure, character relationships (Finch family, Radley, Ewell, Robinson), timelines, and act breakdowns. "Generate a character relationship diagram for Maycomb" lets Claude visualize connections for consistency.

---

## Part II: How MCPs Work Together and Who Orchestrates Them

MCPs do not talk to each other directly. The main Claude agent in Cursor is the orchestrator: it receives your prompt, sees the available MCPs, subagents, Rules, and Skills, and decides which MCPs to call and in what order. For *To Kill A Mockingbird*, a request like "Rewrite the trial scene in Harper Lee's style and ensure continuity" flows as follows. Claude calls the Knowledge Graph Memory MCP to retrieve Scout's state, Atticus's motivations, and the trial timeline. Memory returns Scout's age, Atticus's moral stance, and the verdict sequence. Claude may then call Style Emulation with the scene and a Lee profile; Style Emulation returns a rewritten passage. Claude calls Sequential Thinking to validate whether Scout's confusion during the verdict is consistent with Memory data. Sequential Thinking confirms the logic. Claude synthesizes and returns the final scene. You issue one request; several MCPs collaborate under Claude's coordination.

---

## Part III: Sub-Agents and the Compass Writing System

Sub-agents are specialists defined in `.cursor/agents/*.md`. The main Claude agent decides when to delegate based on the sub-agent's `description`. For *To Kill A Mockingbird*, a fiction-writer sub-agent would always query Memory first, use Sequential Thinking for big decisions (e.g., Heck Tate's lie), and apply prose-style and continuity rules when editing `chapters/*.md`. The Compass Writing Guides MCP and Cursor Workflow Orchestrator MCP align the pipeline with your story bible and prose DNA. The "secret sauce" is the consistent application of the full stack through specialized sub-agents.

---

## Part IV–X: Cursor Tools, Ecosystem, Summary (To Kill A Mockingbird)

Parts IV–X mirror the Marathon Man report: API summary (see Appendix D for full detail), Notion/Obsidian alternatives (Markdown + Filesystem, Google Drive, Book Series, Fireproof), Cursor–Claude ecosystem (Minimal vs Power), Cursor Tools (Rules, Skills, Commands, Prompts, Snippets, Hooks), Orchestration and Compass, Suggested Setup, and Summary. For *To Kill A Mockingbird*, the highest-leverage components are Knowledge Graph Memory, Sequential Thinking (Reference and brothers), Filesystem, fiction-writer sub-agent, Rules (prose-style, continuity), Skills (fiction-drafting, continuity-audit, fiction-revision), and Hooks (sessionStart, afterFileEdit, stop). Start with Memory, Sequential Thinking, Filesystem, Rules, and one sub-agent; add the rest as your process grows.

---

## Appendix A: Sequential Thinking MCP Variants (Five Versions)

| Variant | Use Case | Install |
|---------|----------|---------|
| Reference | Standard stepwise reasoning | `npx -y @modelcontextprotocol/server-sequential-thinking` |
| Ultra | Bias detection, quality metrics, branching | `npx -y @sequential-thinking/ultra` |
| MAS | Multi-agent (Factual, Emotional, Critical, Creative, Synthesis) | `npx -y @fradser/mcp-server-mas-sequential-thinking` |
| Enhanced | Multiple thinking modes | `npx -y @vitalymalakanov/mcp-enhanced-sequential-thinking` |
| Rust | Performance at scale | Cargo/Rust (if available) |

---

## Appendix B: Using Sequential Thinking for Analysis

When Sequential Thinking is installed, ask Claude to use it: "Use Sequential Thinking to analyze whether [your plot decision] is logically consistent with Scout's knowledge and the timeline," or "Use Sequential Thinking to break down the consequences of Heck Tate lying to protect Boo." Sequential Thinking forces stepwise reasoning and makes assumptions explicit.

---

## Appendix C: Rank-Ordered Master List (To Kill A Mockingbird)

Tier 1 (Foundational): Knowledge Graph Memory, fiction-writer sub-agent, Rules, Sequential Thinking Reference, Filesystem, Skills, Sequential Thinking MAS, Sequential Thinking Ultra, Cognee, Compass Writing Guides. Tier 2 (Research, Style): Firecrawl, Style Emulation, DuckDuckGo, Cursor Workflow Orchestrator, Enhanced Sequential Thinking, Fireproof, Professional Editor, Fiction Reverse Engineering, Exa, Brave Search. Tier 3–5: GitHub, Linear, Pandoc, Mem0/OpenMemory, Memory variants, Book Series, Vectara, Zen, Hooks, n8n, Anki, Google Drive, TTS, Figma, Multi-Agent Debate, Perplexity, RAG MCPs, Context7, Commands, Prompts, Snippets, Puppeteer, Fetch, Browser, Supabase, Writer, Open Library, Dennis Lehane, Scalemcp, AI Writers Workshop, YepCode, Toolbox, Slack, Getgather, Ebook, Google Books, AI Context, Saner AI, Scanadi, Pattern Finder, MCP Mermaid. (Full detail in Marathon Man report Appendix C; apply same ranking to *To Kill A Mockingbird*.)

---

## Appendix D: API and Contract Reference — All MCPs (How to Obtain, Where, Steps, Cost)

This appendix lists every MCP, its required API or contract, where to obtain it, the steps to set it up, and the cost. Use this to bring all MCPs into working order.

1. **Knowledge Graph Memory MCP (knowledge-graph-memory)** — No API required. Install: `npx -y @modelcontextprotocol/server-memory`. Cost: Free. Steps: Add to mcp.json; restart Cursor.

2. **Sequential Thinking MCP (sequential-thinking)** — No API required. Install: `npx -y @modelcontextprotocol/server-sequential-thinking`. Cost: Free. Steps: Add to mcp.json; restart Cursor.

3. **Sequential Thinking Ultra (sequential-thinking-ultra)** — No API required. Install: `npx -y @sequential-thinking/ultra`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package exists on npm.

4. **Sequential Thinking MAS (sequential-thinking-mas)** — No API required. Install: `npx -y @fradser/mcp-server-mas-sequential-thinking`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package exists on npm.

5. **Enhanced Sequential Thinking (enhanced-sequential-thinking)** — No API required. Install: `npx -y @vitalymalakanov/mcp-enhanced-sequential-thinking`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package exists on npm.

6. **Cognee MCP (cognee-connections)** — No external API; uses local Python. Install: `python -m cognee_mcp`. Env: `COGNEE_DATA_PATH` (path to data directory). Cost: Free. Steps: Create data directory; add COGNEE_DATA_PATH to env; add to mcp.json; restart Cursor.

7. **Fireproof MCP** — No API required. Install: `npm install @fireproof-storage/mcp-database-server`. Cost: Free. Steps: Add to mcp.json (if package exists); restart Cursor. Note: May need to verify npm package name.

8. **Book Series MCP (book-series)** — Requires PostgreSQL. Obtain: Create a PostgreSQL database (local, Supabase, Neon, or Railway). Env: `POSTGRES_URI` (connection string). Cost: Free (self-hosted) or ~$0–25/mo (hosted). Steps: Create DB; set POSTGRES_URI; add to mcp.json; restart Cursor. Where: supabase.com, neon.tech, railway.app.

9. **OpenMemory MCP (openmemory)** — Requires OpenMemory API key. Obtain: Sign up at app.openmemory.dev or similar. Env: `OPENMEMORY_API_KEY`. Cost: Free tier; paid for higher usage. Steps: Register; get API key; add to env and mcp.json; restart Cursor. Where: app.openmemory.dev.

10. **Firecrawl MCP (firecrawl)** — Requires Firecrawl API key. Obtain: Sign up at firecrawl.dev; Dashboard > API Keys. Env: `FIRECRAWL_API_KEY`. Cost: Free tier; ~$20/mo paid. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: firecrawl.dev.

11. **DuckDuckGo Search MCP (duckduckgo-search)** — No API required. Install: `npx -y @modelcontextprotocol/server-duckduckgo-search`. Cost: Free (rate limit: ~15K/mo, 1 req/sec). Steps: Add to mcp.json; restart Cursor.

12. **Brave Search MCP (brave-search)** — Requires Brave API key. Obtain: brave.com/search/api; sign up; create key. Env: `BRAVE_API_KEY`. Cost: 2,000 free queries/month. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: brave.com/search/api.

13. **Exa MCP (exa)** — Requires Exa account. Obtain: exa.ai; sign up; API section. Env: `EXA_API_KEY`. Cost: Varies; free tier often available. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: exa.ai.

14. **Perplexity MCP (perplexity)** — Requires Perplexity API key. Obtain: perplexity.ai or API provider; sign up. Env: `PERPLEXITY_API_KEY`. Cost: Varies; check perplexity.ai pricing. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: perplexity.ai.

15. **Zen MCP (zen-orchestrator)** — Requires OpenAI, Google, Anthropic API keys. Obtain: platform.openai.com, ai.google.dev, console.anthropic.com. Env: `OPENAI_API_KEY`, `GOOGLE_API_KEY`, `ANTHROPIC_API_KEY`. Cost: ~$30–100+/mo pay-per-use. Steps: Create accounts; copy keys; add to env and mcp.json; restart Cursor. Where: platform.openai.com, ai.google.dev, console.anthropic.com.

16. **Style Emulation MCP (style-emulation)** — Requires Anthropic API key. Obtain: console.anthropic.com; API Keys. Env: `ANTHROPIC_API_KEY`. Cost: Pay-per-token. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: console.anthropic.com.

17. **Dennis Lehane Style MCP (dennis-lehane-style)** — No external API; uses local Python server in Compass repo. Cost: Free. Steps: Ensure Compass path is correct in mcp.json; restart Cursor.

18. **Google Workspace MCP (google-workspace)** — Requires Google OAuth. Obtain: Google Cloud Console; create OAuth client; enable Drive/Workspace APIs. Env: `GOOGLE_OAUTH_CLIENT_ID`, `GOOGLE_OAUTH_CLIENT_SECRET`. Cost: Free (Google account). Steps: Create project; enable APIs; create OAuth credentials; add to env and mcp.json; connect in Cursor when prompted. Where: console.cloud.google.com.

19. **GitHub MCP (github)** — Requires GitHub Personal Access Token. Obtain: github.com/settings/tokens; Generate new token (classic); select repo scope. Env: `GITHUB_TOKEN` or `GITHUB_PERSONAL_ACCESS_TOKEN`. Cost: Free. Steps: Create token; add to env and mcp.json; restart Cursor. Where: github.com/settings/tokens.

20. **GitKraken MCP (gitkraken)** — Requires GitKraken desktop app. Cost: Free or paid. Steps: Install GitKraken; ensure `gk` in PATH; add to mcp.json; restart Cursor. Where: gitkraken.com.

21. **Linear MCP (linear)** — Uses OAuth when connecting. Cost: Free tier. Steps: Add to mcp.json; Cursor will prompt to connect; sign in to Linear. Where: linear.app.

22. **Slack MCP (slack)** — Requires Slack Bot Token and Team ID. Obtain: api.slack.com; create app; add bot token. Env: `SLACK_BOT_TOKEN`, `SLACK_TEAM_ID`. Cost: Free (Slack workspace). Steps: Create app; install to workspace; copy token and team ID; add to env and mcp.json; restart Cursor. Where: api.slack.com.

23. **AssemblyAI MCP (assemblyai)** — Requires AssemblyAI API key. Obtain: assemblyai.com; sign up; dashboard. Env: `ASSEMBLYAI_API_KEY`. Cost: Pay-per-use; free tier available. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: assemblyai.com.

24. **Anki MCP (anki-flashcards)** — Requires Anki desktop + AnkiConnect addon. Cost: Free. Steps: Install Anki; add AnkiConnect addon; install MCP: `npx -y @anki/mcp-server`; add to mcp.json; restart Cursor. Where: apps.ankiweb.net.

25. **Walk-This-Way Files MCP (walk-this-way-files)** — No API required. Install: `npx -y @modelcontextprotocol/server-filesystem /path/to/novel`. Cost: Free. Steps: Replace path with your novel folder; add to mcp.json; restart Cursor.

26. **Tim Cursor Experiment Files MCP (tim-cursor-experiment-files)** — Same as above; different path. Cost: Free. Steps: Path points to Tim Cursor Experiment folder; add to mcp.json; restart Cursor.

27. **Figma MCP (figma)** — Requires Figma access token. Obtain: figma.com; Settings > Personal Access Tokens. Env: `FIGMA_ACCESS_TOKEN`. Cost: Free tier. Steps: Create token; add to env and mcp.json; restart Cursor. Where: figma.com.

28. **n8n MCP (workflow-automation)** — Requires n8n instance (self-hosted or cloud). Env: `N8N_API_KEY` if using n8n cloud. Cost: Free (self-hosted) or paid (cloud). Steps: Set up n8n; get API key if cloud; add to env and mcp.json; restart Cursor. Where: n8n.io.

29. **Pandoc MCP (pandoc)** — No API required. Install: `uvx mcp-pandoc` or `brew install pandoc`. Cost: Free. Steps: Install Pandoc; add to mcp.json; restart Cursor. Where: pandoc.org.

30. **Vectara MCP (vectara)** — Requires Vectara API key and environment ID. Obtain: vectara.com; sign up; create environment. Env: `VECTARA_API_KEY`, `VECTARA_ENV`. Cost: Free tier; paid for scale. Steps: Create account; copy key and env ID; add to env and mcp.json; restart Cursor. Where: vectara.com.

31. **Compass Writing Guides MCP (compass-writing-guides)** — No external API; local Python in Compass repo. Cost: Free. Steps: Ensure path to server.py is correct in mcp.json; restart Cursor.

32. **Cursor Workflow Orchestrator MCP (cursor-workflow-orchestrator)** — No external API; local Python in Compass repo. Cost: Free. Steps: Ensure path is correct in mcp.json; restart Cursor.

33. **Fiction Reverse Engineering MCP (fiction-reverse-engineering)** — No external API; local Python in Compass repo. Cost: Free. Steps: Ensure path is correct in mcp.json; restart Cursor.

34. **Professional Editor MCP (professional-editor)** — No external API; local Python in Compass repo. Cost: Free. Steps: Ensure path is correct in mcp.json; restart Cursor.

35. **Memorygraph MCP (memorygraph)** — No API required. Install: `npx -y @memorygraph/mcp-server`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

36. **Enhanced MCP Memory MCP (enhanced-mcp-memory)** — No API required. Install: `npx -y @cbunting99/enhanced-mcp-memory`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

37. **Supermemory MCP (supermemory)** — No API required. Install: `npx -y @supermemory/mcp-server`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

38. **Scanadi MCP AI Memory (scanadi-mcp-ai-memory)** — Requires PostgreSQL. Env: `POSTGRES_URI`. Cost: Free (self-hosted) or hosted DB cost. Steps: Create DB; set POSTGRES_URI; add to env and mcp.json; restart Cursor. Where: supabase.com, neon.tech, etc.

39. **Ultrarag MCP (ultrarag)** — No external API; Python package. Install: `python -m ultrarag`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package exists.

40. **Ragenta MCP (ragenta)** — No external API; Python package. Install: `python -m ragenta`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package exists.

41. **Scalemcp (scalemcp)** — No API required. Install: `npx -y @scalemcp/server`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

42. **AI Writers Workshop MCP (ai-writers-workshop)** — No API required. Install: `npx -y @ai-writers-workshop/mcp-server`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

43. **Open Library MCP (open-library)** — No API required. Install: `npx -y @8enSmith/mcp-open-library`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

44. **Context7 MCP (context7)** — No API required. Install: `npx -y @upstash/context7-mcp`. Cost: Free (may have Upstash free tier). Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

45. **Supabase MCP (supabase)** — Requires Supabase access token. Obtain: supabase.com; Project Settings > API; access token. Env: `SUPABASE_ACCESS_TOKEN`. Cost: Free tier. Steps: Create project; copy token; add to env and mcp.json; restart Cursor. Where: supabase.com.

46. **Puppeteer MCP (puppeteer)** — No API required. Install: `npx -y @modelcontextprotocol/server-puppeteer`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Requires Chrome/Chromium.

47. **Fetch MCP (fetch)** — No API required. Install: `npx -y @mcpflow.io/mcp-fetch`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

48. **Getgather MCP (getgather)** — No external API; Python package. Install: `python -m mcp_getgather`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package exists.

49. **Ebook MCP (ebook)** — Requires EPUB_LIBRARY_PATH. Env: `EPUB_LIBRARY_PATH` (path to epub files). Cost: Free. Steps: Set path; add to env and mcp.json; restart Cursor.

50. **Google Books MCP (google-books)** — Requires GOOGLE_API_KEY. Obtain: Google Cloud Console; enable Books API; create API key. Env: `GOOGLE_API_KEY`. Cost: Free tier. Steps: Enable Books API; copy key; add to env and mcp.json; restart Cursor. Where: console.cloud.google.com.

51. **Goodreads Scraper MCP (goodreads-scraper)** — Requires APIFY_API_TOKEN. Obtain: apify.com; sign up; API token. Env: `APIFY_API_TOKEN`. Cost: Free tier. Steps: Create account; copy token; add to env and mcp.json; restart Cursor. Where: apify.com.

52. **Grammarly AI MCP (grammarly-ai)** — Requires GRAMMARLY_API_KEY. Obtain: grammarly.com or API provider. Env: `GRAMMARLY_API_KEY`. Cost: Pay-per-use or subscription. Steps: Obtain key; add to env and mcp.json; restart Cursor. Where: developer.grammarly.com or similar.

53. **Word Tune MCP (word-tune)** — Requires AI21_API_KEY. Obtain: ai21.com; sign up; API key. Env: `AI21_API_KEY`. Cost: Pay-per-use. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: ai21.com.

54. **Winston AI MCP (winston-ai)** — Requires WINSTON_AI_API_KEY. Obtain: winston.ai; sign up. Env: `WINSTON_AI_API_KEY`. Cost: Pay-per-use. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: winston.ai.

55. **Copyscape MCP (copyscape)** — Requires COPYSCAPE_API_KEY. Obtain: copyscape.com; sign up; API. Env: `COPYSCAPE_API_KEY`. Cost: Pay-per-use. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: copyscape.com.

56. **AI Context MCP (ai-context)** — No API required. Install: `npx -y ai-context-mcp@latest`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

57. **Saner AI MCP (saner-ai)** — No API required. Install: `npx -y saner-ai-mcp@latest`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package on npm.

58. **Vellum MCP (vellum)** — Requires VELLUM_API_KEY. Obtain: vellum.ai; sign up. Env: `VELLUM_API_KEY`. Cost: Subscription or pay-per-use. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: vellum.ai.

59. **Writer MCP (writer-mcp)** — Requires POSTGRES_URI; optionally OPENAI_API_KEY. Obtain: PostgreSQL (see #8); OpenAI (see Zen). Env: `POSTGRES_URI`, `OPENAI_API_KEY`. Cost: DB + optional OpenAI. Steps: Create DB; set POSTGRES_URI; add to env and mcp.json; restart Cursor.

60. **YepCode MCP (yepcode)** — Requires YEPCODE_API_KEY. Obtain: yepcode.io; sign up. Env: `YEPCODE_API_KEY`. Cost: Varies. Steps: Create account; copy key; add to env and mcp.json; restart Cursor. Where: yepcode.io.

61. **Toolbox MCP (toolbox)** — No API required. Install: `uvx --prerelease=allow mcp-toolbox[all]@latest stdio`. Cost: Free. Steps: Add to mcp.json; restart Cursor. Requires uvx.

62. **Clerk MCP (clerk)** — Requires CLERK_SECRET_KEY. Obtain: clerk.com; sign up; API Keys. Env: `CLERK_SECRET_KEY`. Cost: Free tier. Steps: Create application; copy secret key; add to env and mcp.json; restart Cursor. Where: clerk.com.

63. **Multi-Agent Debate MCP** — Requires multiple model API keys (OpenAI, Anthropic, Google). Same as Zen (#15). Cost: Pay-per-use. Steps: Add to mcp.json if package exists; add all model keys; restart Cursor.

64. **Pattern Finder MCP** — Depends on implementation. May be custom or community. Cost: Varies. Steps: Locate implementation; add to mcp.json; restart Cursor.

65. **Sequential Thinking Rust MCP** — Requires Rust toolchain. Install: cargo build; add to mcp.json. Cost: Free. Steps: Install Rust; build server; add command to mcp.json; restart Cursor. Where: rust-lang.org.

66. **MCP Mermaid (mcp-mermaid)** — No API required. Install: `npx -y @modelcontextprotocol/server-mermaid` or similar. Cost: Free. Steps: Add to mcp.json; restart Cursor. Note: Verify package name for Mermaid MCP.

---

**Summary for quick setup:** Add all keys to `~/.zshrc` or `~/.bash_profile`, then reference via `env:VAR_NAME` in mcp.json. Restart Cursor after any config change. For OAuth (Google, Linear, Figma), Cursor will prompt to connect when first used. For PostgreSQL (Book Series, Scanadi, Writer), create a DB at Supabase, Neon, or Railway and set POSTGRES_URI.

---

## Appendix E: 20 Items Not Yet Considered for Creative Writing — Worth Investigating

The following are MCPs, Cursor extensions, Cursor tools, or related technologies that you may not have fully explored for creative writing. Each is worthy of further investigation for fiction drafting, editing, research, or export.

1. **Vale** — A prose linter (rules-based, not AI) that checks style, repetition, and custom rules. Integrate via Cursor Hooks (afterFileEdit) to run Vale on edited chapters. Free, extensible, deterministic. Where: vale.sh.

2. **ProWritingAid** — Grammar, style, and readability analysis for prose. Has API; could be wrapped as MCP or used via Hook. Useful for editing passes. Where: prowritingaid.com.

3. **Hemingway Editor** — Readability and clarity scoring. No API; could be scripted or used manually. Complements Style Emulation for "plain English" targets.

4. **Scrivener** — Desktop app for long-form writing (outlines, corkboard, split view). No MCP; but export/import with Markdown could sync with Cursor. Worth exploring for structure and drafting workflow.

5. **Manuscripts** — Academic and long-form writing app with structure tools. Similar to Scrivener; may have export formats compatible with Cursor workflow.

6. **Ulysses** — Markdown-focused writing app with folders and sheets. Export to Markdown; import into Cursor for MCP-driven editing. Useful for distraction-free drafting.

7. **Storyist** — Novel-focused app with character sheets, plot lines, and manuscript. Export to DOCX/Markdown; integrate with Cursor for continuity and style.

8. **Dabble** — Novel writing app with plot grid, goals, and cloud sync. May have API or export; worth checking for integration with Cursor + MCPs.

9. **Campfire** — World-building and character/plot organization. Export or manual transfer to Cursor; could feed Memory or Fireproof for story truth.

10. **Notion** (revisited) — You excluded it earlier, but Notion's databases, relations, and templates can mirror character sheets and plot tracking. If you reconsider, the Notion MCP could sync story bible to Cursor.

11. **Obsidian** (revisited) — Graph view, backlinks, and plugins (Dataview, Templater) support world-building and continuity. Obsidian MCP or manual export could feed Cursor. Worth a second look for "haunting" graph-style organization.

12. **Roam Research / LogSeq** — Outline-based, block-level notes with backlinks. Could store plot threads and character arcs; export or API for Cursor integration. Useful for non-linear brainstorming.

13. **Mem** — AI-powered memory and note-taking. May have API; could complement Mem0/OpenMemory for author preferences and prior decisions.

14. **Cursor Composer / Plan Mode** — Cursor features that create plans before executing or compose multi-file edits. Use for "plan Act III revision" or "compose continuity fix across chapters" before committing.

15. **Cursor @-Mentions** — Reference files, folders, docs in chat. Use @STORY_BIBLE, @Chapter_26, @PROSE_DNA to inject context explicitly. Complements Hooks and Rules.

16. **Cursor Shared Transcripts** — Share conversations with beta readers or editors. Useful for collaborative feedback without leaving Cursor.

17. **Cursor Parallel Agents / Swarming** — Multiple agents on worktrees for parallel tasks (one agent on Part I continuity, another on Part II pacing). Worth exploring for large manuscripts.

18. **Claude Projects** — Anthropic's project-level context and memory. If Cursor integrates or you use Claude directly, Projects could store story bible and preferences across sessions.

19. **LangChain / LlamaIndex** — Frameworks for RAG and agent orchestration. Could build custom "fiction continuity agent" that chains Memory + Sequential Thinking + Style Emulation in a scripted sequence, bypassing Cursor's default orchestration for maximum control.

20. **Local LLMs (Ollama, LM Studio)** — Run open models locally for privacy or cost. Some MCPs support local endpoints; could route dialogue or drafting to a local model while keeping Claude for orchestration. Useful for sensitive drafts or high-volume experimentation.

---

## Appendix F: Additions to the Arsenal (from Appendix E)

The following items from Appendix E are now formally added to the creative-writing arsenal. Each is listed with whether it **requires an API** or **another tool** to connect to an MCP (or to Cursor).

### ProWritingAid (#2)

**Added to arsenal:** Yes.  
**API or other tool required to connect to MCP:** **Yes — API.**  
ProWritingAid exposes a REST API (see prowritingaid.com → API or Developer). To use it as an MCP you would either: (1) build or use a small MCP server that calls the ProWritingAid API and exposes tools (e.g., `analyze_prose`, `get_suggestions`) to Cursor, or (2) call it from a Cursor Hook (e.g., afterFileEdit) via a script that sends the edited file content to the API and writes results to a file or stdout for the agent to read.  
**Steps:** Sign up at prowritingaid.com; obtain API key from account/developer section; add `PROWRITINGAID_API_KEY` to env; implement or install an MCP server that wraps the API, or call the API from a Hook script.  
**Cost:** Subscription (check prowritingaid.com for API pricing).  
**Fiction use:** Grammar, style, and readability analysis on chapters; use before or after Style Emulation for a second, rule-based pass.

---

### Hemingway Editor (#3)

**Added to arsenal:** Yes.  
**API or other tool required to connect to MCP:** **No API.** Hemingway Editor does not offer a public API. Connection options are: (1) **Manual** — paste text into hemingwayapp.com or the desktop app; use output as reference when editing in Cursor. (2) **Scripted / Hook** — use a local tool or script that approximates Hemingway-style checks (e.g., sentence length, passive voice, adverbs) and run it via a Cursor Hook (e.g., afterFileEdit). That script is the "other tool"; it is not an official Hemingway MCP. (3) **Unofficial or community MCP** — if someone has built an MCP that wraps a Hemingway-like analyzer (e.g., readability formulas, style rules), you could add that MCP; it would not be the official Hemingway product.  
**Steps:** Use hemingwayapp.com or desktop app manually; or implement a Hook that runs a readability/style script (e.g., Pygments, textstat, or custom rules) on saved chapters.  
**Cost:** Free (web); desktop may have a one-time fee.  
**Fiction use:** Readability and clarity scoring; complements Style Emulation for "plain English" or punchy prose targets.

---

### LangChain / LlamaIndex (#19) — Detailed Use for Fiction and Orchestration

**Added to arsenal:** Yes.  
**API or other tool required to connect to MCP:** **Depends.** LangChain and LlamaIndex are **frameworks** (Python/JS libraries), not MCPs. They do not require a single "LangChain API"; they require (a) your code that uses the framework, and (b) whatever backends you wire in (e.g., OpenAI/Anthropic APIs for LLMs, vector DBs for RAG, or MCP servers as tools). So: **APIs are needed for the LLMs and optional services** (e.g., OpenAI, Anthropic, embedding APIs) that your orchestration script calls; **no separate "LangChain API"** is required. The "other tool" is **your own orchestration script or service** that you run outside (or alongside) Cursor.

**How to use for fiction novels and orchestration of multiple inputs**

The goal is to support the orchestration of multiple inputs—whether Cursor tools (Rules, Skills, Hooks) or MCPs—in a **deterministic, scripted order** so you are not solely dependent on the main Cursor agent’s choices. LangChain and LlamaIndex let you define a **pipeline** that runs in a fixed sequence: for example, "always query Memory first, then run Sequential Thinking, then call Style Emulation, then write the result back."

**1. Define the pipeline (what runs, in what order)**  
For a single-novel workflow you might define:

- **Step 1 — Context:** Query your story "memory" (e.g., Knowledge Graph Memory MCP, or a RAG index over your story bible and character sheets built with LlamaIndex).
- **Step 2 — Reasoning:** Run a "Sequential Thinking"–style pass (e.g., call an LLM with a structured prompt that forces stepwise reasoning, or call the Sequential Thinking MCP if the framework can invoke MCP tools).
- **Step 3 — Style:** Run style emulation (e.g., call the Style Emulation MCP, or an LLM with a style prompt).
- **Step 4 — Output:** Write the revised passage to a file or return it to Cursor.

You can add steps (e.g., Firecrawl for research, Vectara for semantic search over the manuscript) and reorder them. The important part is that **you** define the sequence in code, so orchestration is explicit and repeatable.

**2. Implement the pipeline with LangChain or LlamaIndex**  
- **LangChain:** Use "chains" or "agents" with "tools." Each tool can be a function that (a) calls an MCP server (if you expose MCPs as HTTP or stdio and wrap them in a LangChain tool), (b) calls an API (e.g., ProWritingAid, your Memory backend), or (c) runs a local script (e.g., Vale, readability script). You then build a chain: `context_tool → reasoning_tool → style_tool → output`. LangChain handles passing the output of one step as input to the next.  
- **LlamaIndex:** Use "query engines," "agents," or "workflows." LlamaIndex is strong for RAG: index your manuscript, story bible, and character notes; then run a query that (1) retrieves relevant chunks, (2) runs an LLM with those chunks plus a reasoning prompt, (3) runs a second LLM or tool for style. You can wrap MCP calls or Cursor-relevant logic (e.g., "read file from path") as custom tools or functions and compose them in a workflow.

**3. Connect Cursor tools and MCPs**  
- **MCPs:** If an MCP server exposes an HTTP or stdio interface, you can call it from your Python orchestration script (e.g., via the MCP SDK or a small HTTP client). Your script then becomes the "orchestrator" that calls Memory MCP → Sequential Thinking MCP → Style Emulation MCP in order and aggregates results.  
- **Cursor tools:** Rules and Skills cannot be "called" from outside Cursor; they are applied inside Cursor when the agent runs. So your LangChain/LlamaIndex pipeline runs **alongside** Cursor: for example, you run the pipeline as a **custom command** or **Hook** (e.g., beforeSubmitPrompt or afterFileEdit). The Hook runs your script; the script calls MCPs (or APIs) in sequence and writes a summary or revised text to a file; Cursor (or the agent) then sees that file. Alternatively, you run the pipeline **outside** Cursor (e.g., from the terminal or a local server) and paste the result into Cursor. So "multiple inputs" from Cursor (e.g., current chapter, current rules) can be **passed into** your script as file paths or env vars; the script’s output can be **passed back** into Cursor as a file or as context the agent reads.

**4. Practical fiction use cases**  
- **Continuity pass:** Pipeline: (1) Load chapter from path. (2) Query Memory (or RAG over story bible) for character states and timeline. (3) Call LLM with "Given this context, flag continuity errors in this chapter." (4) Write report to file; open in Cursor.  
- **Revision pass:** Pipeline: (1) Load chapter. (2) Query Memory for POV and voice. (3) Call Sequential Thinking MCP (or LLM with stepwise prompt) for "Is this scene logically consistent?" (4) Call Style Emulation MCP (or LLM with style prompt) to rewrite. (5) Write revised chapter to file; diff in Cursor.  
- **Research → draft:** Pipeline: (1) Query Firecrawl or search MCP for period details. (2) Query Memory for character and plot. (3) Call LLM to draft a scene given context + research. (4) Write draft to file for Cursor.

**5. Summary**  
- **APIs:** You need the APIs for whatever the pipeline calls (LLMs, ProWritingAid, etc.). No separate "LangChain API."  
- **Other tool:** Your own Python (or JS) script or service using LangChain or LlamaIndex, plus (optional) a Cursor Hook or custom command that invokes it.  
- **Benefit for fiction:** Deterministic orchestration of multiple inputs (MCPs, APIs, files) so that Memory → Reasoning → Style (and optional Research) always run in the order you choose, reducing reliance on the main agent’s ad-hoc choices while still using Cursor and MCPs for editing and context.

---

*Guide created for single-novel fiction writing. To Kill A Mockingbird examples are for teaching only; swap in your own novel and apply the same structure and workflow.*
