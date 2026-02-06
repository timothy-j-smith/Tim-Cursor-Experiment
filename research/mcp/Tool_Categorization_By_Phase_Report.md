# Tool Categorization by Phase: Architecture, Brick, Scalpel/Hose

**Purpose:** Organize all discussed MCPs, Cursor tools, scripts, and agents into categories and map them to your three phases of fiction writing.  
**Phases:** (1) **Architecture** — creating a fiction story from scratch; (2) **Brick** — writing the story brick by brick; (3) **Scalpel/Hose** — editing by cutting purple prose and superfluous text, then hosing in the best prose.  
**Note:** The process is not strictly linear; you will move back and forth between phases based on Cursor Claude feedback.  
**Redundancy:** When tools overlap, the stronger or better option for your use case is indicated; weaker or redundant options are noted.

---

## I. CATEGORIES (All Tools Grouped by Function)

### Category A: Memory & Story Truth
Tools that store and query characters, relationships, timeline, plot threads, and canonical facts.

1. **Knowledge Graph Memory MCP** — Primary; single source of truth. **Keep.**
2. **Memorygraph MCP** — Alternative graph backend. **Redundant** if Knowledge Graph is working; use only for backup or different query style.
3. **Enhanced MCP Memory MCP** — Extended memory features. **Redundant** with Knowledge Graph for story truth; consider only if you need specialized queries.
4. **Supermemory MCP** — Another persistence backend. **Redundant** with Knowledge Graph.
5. **Scanadi MCP AI Memory** — PostgreSQL-backed. **Redundant** unless you need DB integration; Book Series or Writer MCP may cover this.
6. **OpenMemory / Mem0 MCP** — Cross-session author preferences and prior decisions. **Keep** — different purpose (author memory vs. story memory).
7. **Fireproof MCP** — JSON docs for character sheets, "best of" passages. **Keep** — complements Memory for structured notes and scene summaries.
8. **Book Series MCP** — Character arcs, plot, research in structured DB. **Keep** — overlaps with Memory but adds series-style tracking; for one novel, **Memory + Fireproof** may suffice; Book Series is optional.
9. **Compass Writing Guides MCP** — Story bible, prose DNA alignment. **Keep** — part of Compass; guides rather than stores.
10. **YAML frontmatter / outline files** — Chapter metadata, character sheets in Markdown. **Keep** — lightweight, file-based; no MCP needed.

**Category A summary:** Use **Knowledge Graph Memory** as primary; **OpenMemory** for author preferences; **Fireproof** for "best of" and scene summaries. Drop Memorygraph, Enhanced MCP Memory, Supermemory, Scanadi unless you have a specific need. Book Series is optional for one novel.

---

### Category B: Reasoning & Plot Logic
Tools that force stepwise reasoning, check plot logic, and validate character decisions.

11. **Sequential Thinking MCP (Reference)** — Primary; stepwise reasoning. **Keep.**
12. **Sequential Thinking Ultra** — Bias detection, quality metrics, branching. **Keep** — add when you need bias checks on big decisions.
13. **Sequential Thinking MAS** — Five agents (Factual, Emotional, Critical, Creative, Synthesis). **Keep** — add for high-stakes decisions.
14. **Enhanced Sequential Thinking** — Multiple thinking modes (creative, evaluative, linear). **Keep** — add for mode-specific tasks (brainstorming vs. consistency).
15. **Sequential Thinking (Rust)** — Same as Reference, faster. **Redundant** for single-chapter work; **keep** only for full-manuscript or multi-chapter analysis when speed matters.
16. **Cognee MCP** — Thematic and hidden connections (graph-RAG). **Keep** — different from Sequential Thinking; surfaces thematic links.
17. **Multi-Agent Debate MCP** — Multiple models debate a choice. **Optional** — overlaps with Sequential Thinking MAS; use when you want model diversity over single-model multi-agent.
18. **LangChain / LlamaIndex** — Scripted orchestration of reasoning + other steps. **Keep** — for deterministic pipelines when you want to bypass agent choice.

**Category B summary:** Use **Sequential Thinking Reference** as primary; add **Ultra** for bias, **MAS** for multi-angle, **Enhanced** for mode switching. **Rust** only for speed at scale. **Cognee** for thematic links. **Multi-Agent Debate** optional. **LangChain/LlamaIndex** for scripted control.

---

### Category C: Research
Tools that fetch facts, period details, and sources from the web or databases.

19. **Firecrawl MCP** — Deep web scraping, converts to Markdown. **Keep** — primary for deep research.
20. **DuckDuckGo Search MCP** — Fast, free search. **Keep** — primary for quick fact-checking; no API.
21. **Brave Search MCP** — Alternative search. **Redundant** with DuckDuckGo for most use; use only when DuckDuckGo rate limit or quality is insufficient.
22. **Exa MCP** — Semantic search. **Keep** — deeper than keyword search; use for scholarly or thematic research.
23. **Perplexity MCP** — Web-augmented, synthesized answers. **Keep** — different from raw search; use for summarized research.
24. **Open Library MCP** — Book metadata. **Optional** — use for tradition and period references.
25. **Google Books MCP** — Book content and metadata. **Optional** — overlaps with Open Library; pick one.
26. **Puppeteer MCP** — Browser automation. **Optional** — use when Firecrawl cannot reach a site.
27. **Fetch MCP** — HTTP requests. **Optional** — use for simple API or URL fetches; Firecrawl often sufficient.
28. **Getgather MCP** — Collection/gathering. **Optional** — verify use case; may overlap with research MCPs.
29. **Cursor native browser tool** — Visual verification. **Keep** — when available; use for manual verification of sources.

**Category C summary:** Use **DuckDuckGo** (free) + **Firecrawl** (deep) as primary. Add **Exa** and **Perplexity** for semantic/synthesized research. Brave, Puppeteer, Fetch, Getgather are optional or redundant.

---

### Category D: Style & Prose
Tools that match prose to a target style, check grammar, readability, and repetition.

30. **Style Emulation MCP** — Matches prose to target author (e.g., Goldman, Lee). **Keep** — primary for Scalpel/Hose.
31. **Dennis Lehane Style MCP** — Author-specific voice. **Optional** — complements Style Emulation; add if you want additional style references.
32. **ProWritingAid** (wrapped as MCP or Hook) — Grammar, style, readability. **Keep** — rule-based complement to Style Emulation; requires API.
33. **Hemingway Editor** — Readability, clarity. **Optional** — no API; use manually or via custom script; **Vale** or **lint_prose.py** can approximate.
34. **Vale** — Prose linter (rules-based). **Keep** — free, deterministic; use via Hook.
35. **Grammarly AI MCP** — Grammar and style. **Redundant** with ProWritingAid for prose; pick one.
36. **Word Tune MCP** — Rewriting suggestions. **Redundant** with Style Emulation for style; optional for quick phrasings.
37. **Pattern Finder (custom or MCP)** — Repetition, overused words. **Keep** — implement via script or MCP; critical for Scalpel phase.
38. **lint_prose.py** (custom script) — Overused words, POV drift. **Keep** — run via afterFileEdit Hook; complements Vale.
39. **Cursor Rules (prose-style.mdc)** — Define voice and constraints. **Keep** — free, always-on when editing chapters.

**Category D summary:** Use **Style Emulation** + **prose-style Rule** as primary. Add **ProWritingAid** or **Vale** (pick one for rule-based pass) + **Pattern Finder** or **lint_prose.py** for repetition. Hemingway, Grammarly, Word Tune are optional or redundant.

---

### Category E: Structure & Visualization
Tools that create diagrams, outlines, maps, and visual structure.

40. **MCP Mermaid** — Plot structure, character relationships, timelines. **Keep** — primary for Architecture and Brick.
41. **Figma MCP** — Storyboards, maps, character boards. **Optional** — use if you prefer visual design tools; Mermaid is lighter.
42. **YAML outline / character frontmatter** — Structured metadata in Markdown. **Keep** — no MCP; file-based.
43. **Fiction Reverse Engineering MCP** — Break down published fiction into structure. **Keep** — for Architecture (learning from references).

**Category E summary:** Use **MCP Mermaid** + **YAML** as primary. Figma optional. Fiction Reverse Engineering for learning.

---

### Category F: File Access & Version Control
Tools that read/write files and manage versions.

44. **Filesystem MCP (walk-this-way, tim-cursor-experiment-files)** — Read/write chapters, outlines. **Keep** — required; one instance per project path.
45. **GitHub MCP** — Version control, branches. **Keep** — primary for versioning.
46. **GitKraken MCP** — Git workflows. **Redundant** with GitHub MCP for basic use; keep if you prefer GitKraken UI.
47. **Google Workspace MCP** — Cloud docs. **Optional** — use for backup/sync; Filesystem + GitHub may suffice.
48. **Pandoc MCP** — Export to DOCX, PDF, EPUB. **Keep** — required for submission.

**Category F summary:** Use **Filesystem** + **GitHub** + **Pandoc** as primary. GitKraken and Google Workspace optional.

---

### Category G: Orchestration & Workflow
Tools that sequence steps, define workflows, and coordinate other tools.

49. **Cursor Skills** — Teach agent when and how to use MCPs. **Keep** — primary for workflow.
50. **Fiction-writer sub-agent** — Specialist that always uses Memory, Sequential Thinking, Rules. **Keep** — primary for consistent behavior.
51. **Cursor Workflow Orchestrator MCP** — Sequences MCPs and sub-agents. **Keep** — if you have it; complements Skills.
52. **Cursor Hooks** — sessionStart, afterFileEdit, beforeSubmitPrompt, stop. **Keep** — for context injection and lint.
53. **LangChain / LlamaIndex** — Scripted pipelines. **Keep** — for deterministic orchestration when agent choice is insufficient.
54. **n8n MCP** — Workflow automation (backups, reminders). **Optional** — for automation outside Cursor.
55. **Cursor Commands** — Custom slash commands. **Keep** — shortcuts for common workflows.
56. **Cursor Prompts** — Saved multi-step prompts. **Optional** — weaker than Skills for enforcement; use as templates.
57. **Cursor Snippets** — Quick instruction injection. **Optional** — convenience; not unique.

**Category G summary:** Use **Skills** + **sub-agent** + **Hooks** as primary. Add **Cursor Workflow Orchestrator** and **LangChain/LlamaIndex** for stricter sequencing. Commands for shortcuts. Prompts and Snippets optional.

---

### Category H: Task Management & Collaboration
Tools that track tasks and share work.

58. **Linear MCP** — Issues, roadmap. **Keep** — primary for task tracking.
59. **Slack MCP** — Notifications, sharing. **Optional** — for team or beta readers.
60. **Cursor Shared Transcripts** — Share conversations. **Keep** — for feedback; built-in.

**Category H summary:** Use **Linear** for tasks. Slack and Shared Transcripts optional.

---

### Category I: Export, Submission & Quality Assurance
Tools that produce final output and check for issues.

61. **Pandoc MCP** — DOCX, PDF, EPUB. **Keep** — required.
62. **Vellum MCP** — Professional formatting. **Optional** — paid; use if you need Vellum-specific output.
63. **Text-to-Speech (AssemblyAI or similar)** — Read aloud for rhythm. **Keep** — for Scalpel/Hose.
64. **Copyscape MCP** — Plagiarism check. **Optional** — before submission.
65. **Winston AI MCP** — AI detection. **Optional** — for disclosure.
66. **Writer MCP** — Word counts, goals. **Optional** — for progress tracking.

**Category I summary:** Use **Pandoc** + **TTS** as primary. Vellum, Copyscape, Winston, Writer optional.

---

### Category J: Context & Long-Session Support
Tools that manage context and keep long sessions coherent.

67. **Context7 MCP** — Context management. **Optional** — for very long chats.
68. **AI Context MCP** — Context selection. **Optional** — overlaps with Context7.
69. **Saner AI MCP** — Context validation. **Optional** — overlaps with AI Context.
70. **SessionStart Hook** — Inject story bible, prose DNA. **Keep** — for "haunting" bootstrap.

**Category J summary:** Use **SessionStart Hook** as primary. Context7, AI Context, Saner AI optional for long sessions.

---

### Category K: RAG & Semantic Search Over Manuscript
Tools that index and search your manuscript.

71. **Vectara MCP** — Semantic search across manuscript. **Keep** — for "find all scenes about X."
72. **Ultrarag MCP** — RAG over documents. **Optional** — overlaps with Vectara; pick one.
73. **Ragenta MCP** — RAG. **Redundant** with Ultrarag; pick one RAG MCP.
74. **Cognee MCP** — Graph-RAG for thematic links. **Keep** — different from Vectara (thematic vs. semantic search).

**Category K summary:** Use **Vectara** for semantic search. **Cognee** for thematic links. Ultrarag or Ragenta (one) if you need RAG; otherwise Vectara may suffice.

---

### Category L: Miscellaneous & Optional
Tools that are specialized or lower priority.

75. **Zen MCP** — Multi-model routing. **Optional** — use when you want best model per task.
76. **Anki MCP** — Flashcards for continuity. **Optional** — reinforces consistency; Memory may suffice.
77. **Professional Editor MCP** — Editorial feedback. **Keep** — for Scalpel/Hose passes.
78. **AI Writers Workshop MCP** — Workshop exercises. **Optional** — for experimentation.
79. **YepCode MCP** — Generate and run code. **Optional** — for custom tools.
80. **Toolbox MCP** — Bundled utilities. **Optional** — for ad hoc tasks.
81. **Supabase MCP** — Structured DB. **Optional** — for custom persistence.
82. **Ebook MCP** — EPUB access. **Optional** — for research.
83. **Goodreads Scraper MCP** — Reviews. **Optional** — for market awareness.
84. **Scalemcp** — Scale MCP usage. **Optional** — operational.
85. **Clerk MCP** — Auth. **Optional** — for apps.
86. **Cursor @-Mentions** — Reference files in chat. **Keep** — built-in; use @STORY_BIBLE, @Chapter_X.
87. **Cursor Plan Mode / Composer** — Plan before executing. **Keep** — for large edits.
88. **Cursor Parallel Agents / Swarming** — Multiple agents in parallel. **Optional** — for big, divisible tasks.
89. **Bugbot** — Code-focused. **Not for prose** — use Vale or lint_prose instead.
90. **.json configs** — mcp.json, hooks.json. **Keep** — required for configuration.
91. **.py scripts** — word_report.py, lint_prose.py. **Keep** — run via Hooks.
92. **.yaml / .mdc** — Outline, frontmatter, Rules. **Keep** — file-based structure.

---

## II. MAPPING TO YOUR THREE PHASES

### Phase 1: ARCHITECTURE (Creating Story from Scratch)

**Primary tools (in order of importance):**

1. **Sequential Thinking MCP (Reference)** — For plot logic, structure decisions, theme.
2. **Sequential Thinking Enhanced** — Creative mode for brainstorming; evaluative for consistency.
3. **MCP Mermaid** — Plot structure, character relationships, act breakdowns.
4. **Knowledge Graph Memory MCP** — Store characters, relationships, timeline as you build.
5. **Fiction Reverse Engineering MCP** — Learn from reference novels.
6. **Compass Writing Guides MCP** — Align with story bible and prose DNA.
7. **Fiction-writer sub-agent** — Specialist for structure and outline tasks.
8. **Cursor Skills (fiction-drafting, continuity-audit)** — Workflow for outline and structure.
9. **Firecrawl MCP** — Research for world-building and period.
10. **DuckDuckGo Search MCP** — Quick fact-checking for setting.
11. **YAML outline / character frontmatter** — Structured metadata.
12. **Fireproof MCP** — Store outline, character sheets, "best of" structure notes.
13. **Linear MCP** — Track "Outline Act I," "Character sheets," etc.
14. **SessionStart Hook** — Inject story bible and prose DNA at session start.
15. **Cursor Rules (prose-style.mdc, continuity.mdc)** — Define voice and consistency from the start.

**Redundant or lower priority for Architecture:** Sequential Thinking Ultra (add later for bias), MAS (add for high-stakes decisions), Rust (speed not critical yet). Brave Search, Exa, Perplexity (DuckDuckGo + Firecrawl sufficient to start). Multiple memory MCPs (Knowledge Graph + Fireproof sufficient).

---

### Phase 2: BRICK (Writing Brick by Brick)

**Primary tools (in order of importance):**

1. **Knowledge Graph Memory MCP** — Query before every scene; update after.
2. **Fiction-writer sub-agent** — Always uses Memory, Sequential Thinking, Rules.
3. **Filesystem MCP** — Read/write chapters, character sheets.
4. **Cursor Rules (prose-style.mdc, continuity.mdc)** — Apply to every chapter edit.
5. **Cursor Skills (fiction-drafting)** — Context → Research → Draft → Validate → Store.
6. **Sequential Thinking MCP (Reference)** — For plot decisions mid-draft.
7. **Firecrawl MCP** — Research as you write.
8. **DuckDuckGo Search MCP** — Quick facts.
9. **OpenMemory / Mem0 MCP** — Remember your pacing and voice choices.
10. **Compass Writing Guides MCP** — Stay aligned with north.
11. **MCP Mermaid** — Update structure diagrams as story evolves.
12. **Fireproof MCP** — Store "best of" passages, scene summaries.
13. **GitHub MCP** — Version control; branches for alternate scenes.
14. **Linear MCP** — Track "Draft Ch 5," "Research 1930s courthouse."
15. **Cursor Hooks (afterFileEdit)** — Run lint_prose.py on save.
16. **Cursor @-Mentions** — @STORY_BIBLE, @Chapter_12 when drafting.
17. **Cursor Commands** — /draft-scene, /continuity-check.
18. **Exa MCP** — Deeper research when needed.
19. **Perplexity MCP** — Synthesized research.
20. **.yaml frontmatter** — Per-chapter metadata (POV, tension, characters).

**Redundant or lower priority for Brick:** Style Emulation (more critical in Scalpel/Hose). ProWritingAid, Vale (add in Scalpel). Multiple Sequential Thinking variants (Reference sufficient for most; add Ultra/MAS for big decisions). Zen (optional for multi-model).

---

### Phase 3: SCALPEL/HOSE (Editing: Cut Purple Prose, Hose In Best Prose)

**Primary tools (in order of importance):**

1. **Style Emulation MCP** — Match prose to target style; primary for "hose."
2. **Cursor Rules (prose-style.mdc)** — Define what to cut and what to keep.
3. **Pattern Finder / lint_prose.py** — Find repetition, overused words; primary for "scalpel."
4. **Vale** — Prose linter via Hook; deterministic rules.
5. **Knowledge Graph Memory MCP** — Ensure edits don't break continuity.
6. **Sequential Thinking MCP (Reference)** — Validate that cuts and additions preserve logic.
7. **Sequential Thinking Ultra** — Bias check: are you cutting for quality or convenience?
8. **Sequential Thinking MAS** — Multi-angle view on high-stakes edits.
9. **Cognee MCP** — Thematic consistency after edits.
10. **Vectara MCP** — Find "all scenes with X" for thematic alignment.
11. **Professional Editor MCP** — Developmental and line-level feedback.
12. **Text-to-Speech (AssemblyAI)** — Hear rhythm and dialogue.
13. **ProWritingAid** — Grammar, style, readability (if wrapped).
14. **Fiction-writer sub-agent** — Specialist for revision.
15. **Cursor Skills (fiction-revision, continuity-audit)** — Revision workflow.
16. **Cursor Hooks (afterFileEdit)** — Run Vale, lint_prose on every edit.
17. **Multi-Agent Debate MCP** — Multiple models on "cut or keep?"
18. **Pandoc MCP** — Export for beta readers.
19. **GitHub MCP** — Compare versions (before/after Scalpel/Hose).
20. **Cursor Plan Mode** — Plan revision before executing.

**Redundant or lower priority for Scalpel/Hose:** Hemingway (Vale or lint_prose can approximate). Grammarly, Word Tune (ProWritingAid or Style Emulation stronger). Enhanced Sequential Thinking (Ultra and MAS more useful for editing decisions). Research MCPs (less critical in edit phase).

---

## III. ORDER OF IMPORTANCE ACROSS ALL PHASES (Unified Ranking)

**Tier 1 — Essential (use in all phases):**

1. Knowledge Graph Memory MCP  
2. Fiction-writer sub-agent  
3. Cursor Rules (prose-style, continuity)  
4. Cursor Skills (fiction-drafting, continuity-audit, fiction-revision)  
5. Sequential Thinking MCP (Reference)  
6. Filesystem MCP  
7. SessionStart Hook  
8. Compass Writing Guides MCP  

**Tier 2 — High value (use in 2+ phases):**

9. Firecrawl MCP  
10. DuckDuckGo Search MCP  
11. Style Emulation MCP  
12. MCP Mermaid  
13. Cognee MCP  
14. Fireproof MCP  
15. Cursor Hooks (afterFileEdit, stop)  
16. GitHub MCP  
17. Linear MCP  
18. OpenMemory MCP  
19. Professional Editor MCP  
20. Cursor Workflow Orchestrator MCP  

**Tier 3 — Phase-specific or optional:**

21. Sequential Thinking Ultra, MAS, Enhanced  
22. Pattern Finder / lint_prose.py / Vale  
23. ProWritingAid  
24. Vectara MCP  
25. Pandoc MCP  
26. Text-to-Speech  
27. LangChain / LlamaIndex  
28. Fiction Reverse Engineering MCP  
29. Cursor Commands, @-Mentions, Plan Mode  
30. Exa, Perplexity, Zen  
31. Book Series, n8n, Anki, Figma  
32. All other tools (see Category L)  

---

## IV. REDUNDANCY SUMMARY (Grouped Like Tools; Stronger Option Preferred)

| Group | Stronger / Preferred | Weaker / Redundant | When to Use Weaker |
|-------|----------------------|--------------------|--------------------|
| Memory | Knowledge Graph | Memorygraph, Enhanced, Supermemory, Scanadi | Only if Knowledge Graph fails or you need DB |
| Search | DuckDuckGo + Firecrawl | Brave Search | When DuckDuckGo rate limit hit |
| Style (rule-based) | ProWritingAid or Vale | Hemingway, Grammarly, Word Tune | Hemingway if no API; Grammarly if you prefer it |
| Style (AI) | Style Emulation | Dennis Lehane (complement, not replace) | Dennis Lehane for additional voice |
| Version control | GitHub MCP | GitKraken MCP | GitKraken if you prefer its UI |
| RAG | Vectara | Ultrarag, Ragenta | One RAG MCP; Vectara preferred |
| Sequential Thinking | Reference (primary) | Rust (same logic, faster) | Rust only for full-manuscript speed |
| Context | SessionStart Hook | Context7, AI Context, Saner AI | Context7 etc. for very long sessions |
| Book metadata | Open Library or Google Books | Both | Pick one |
| Orchestration | Skills + sub-agent | Prompts, Snippets | Prompts/Snippets as templates only |

---

## V. SEQUENTIAL THINKING BROTHERS' UNIFIED VIEW

**Reference:** The categorization is sound. Memory, Reasoning, Research, Style, Structure, File Access, Orchestration, and Phase mapping cover the tools. Redundancy notes are accurate; prefer the stronger option unless you have a specific reason.

**Ultra:** Bias check: We are not over-preferring MCPs over Cursor-native tools. Rules, Skills, Hooks, and sub-agents are free and immediate; they should be Tier 1. MCPs add capability but require setup. Quality: The phase mapping (Architecture → Brick → Scalpel/Hose) is correct; each phase has the right primary tools.

**MAS:** Factual: The tool list is complete. Emotional: The "back and forth" between phases is acknowledged; tools in each phase remain available when you loop. Critical: No major gaps. Creative: Consider adding a "Phase 0" for reading and reverse-engineering before Architecture. Synthesis: Proceed with this categorization; refine as you use the tools.

**Enhanced:** Linear: The order of importance is correct. Evaluative: Redundancy table is useful; avoid tool sprawl. Creative: The three-phase model is flexible enough for non-linear workflow.

**Rust:** Same logic; verified. The report is complete and actionable.

---

*Report generated for fiction writing tool categorization. Apply to your Architecture, Brick, and Scalpel/Hose workflow; iterate as you learn.*
