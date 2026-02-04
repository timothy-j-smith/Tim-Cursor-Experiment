# Fiction Writing MCP Guide: Curated for One Novel

**Scope:** Writing a single creative fiction novel  
**Teaching Example:** *Marathon Man* by William Goldman (thriller: Babe Levy, Szell, diamonds, "Is it safe?")  
**Excluded:** Notion, Obsidian, and MCPs with no fiction relevance

---

## Part I: Curated MCP List (Ordered by Usefulness)

### 1. Knowledge Graph Memory MCP
**Rank:** #1  
**API Required:** No  
**Cost:** Free (official Anthropic MCP)  
**How to Obtain:** `npx -y @modelcontextprotocol/server-memory`

**Fiction Use:** Stores characters, relationships, plot threads, and world-building in a graph. For *Marathon Man*, you could store: Babe Levy (history Ph.D., marathon runner, father’s suicide), Dr. Szell (Nazi dentist, diamonds, “Is it safe?”), Doc Levy (secret agent, brother), and the Division. You can ask “Who knows about the diamonds?” or “When did Doc die relative to Szell’s arrival?” and get structured answers. It keeps the story’s “truth” consistent across chapters and revisions.

**Marathon Man Example:** *"What are Babe's unresolved conflicts?"* → Knowledge Graph returns: father’s suicide (McCarthy era), Doc’s death, Szell’s torture, the diamonds. The graph keeps Babe’s motivation and Szell’s timeline aligned.

---

### 2. Sequential Thinking MCP
**Rank:** #2  
**API Required:** No  
**Cost:** Free  
**How to Obtain:** `npx -y @modelcontextprotocol/server-sequential-thinking`

**Fiction Use:** Makes the model reason step by step, so plot logic and character decisions are explicit. For *Marathon Man*, it helps answer “Why doesn’t Babe tell Szell what he knows?” by breaking down assumptions (Babe doesn’t know), consequences (Szell won’t believe him), and outcome (torture continues). It reduces plot holes and logical gaps in cause-and-effect.

**Marathon Man Example:** *"Should Babe confront Szell at the bank or wait for police?"* → Sequential Thinking lays out: Babe’s trauma, Szell’s escape risk, Babe’s agency, and thematic fit. The chain of reasoning supports the final choice.

---

### 3. Cognee MCP
**Rank:** #3  
**API Required:** Self-host: No; Hosted: Possibly  
**Cost:** Free (self-hosted via Docker)  
**How to Obtain:** Docker: `docker run cognee/cognee-mcp` or Python package

**Fiction Use:** Graph-RAG that finds links between concepts you didn’t explicitly create. For *Marathon Man*, it can surface that Babe’s father’s suicide (McCarthy-era betrayal) connects to Doc’s secret agency work and Szell’s torture (trust, secrecy, betrayal). It supports thematic coherence and “hidden” connections.

**Marathon Man Example:** *"How does 'Is it safe?' connect to the novel's themes?"* → Cognee traces: Szell’s question → Babe’s confusion → father’s suicide (safety lost) → Doc’s secrecy → trust and betrayal. It makes the symbol’s meaning explicit.

---

### 4. Fireproof MCP
**Rank:** #4  
**API Required:** No  
**Cost:** Free (open source)  
**How to Obtain:** `npm install @fireproof-storage/mcp-database-server`

**Fiction Use:** Stores JSON documents with sync and versioning. Use it for character sheets, scene summaries, timeline notes, and “best of” passages. For *Marathon Man*, keep Szell’s backstory, Babe’s marathon training beats, and Doc’s Division role. Query “best tension scenes” when revising.

**Marathon Man Example:** Store: `{ "character": "Szell", "key_detail": "Former Auschwitz dentist; diamonds from prisoners; arrives after father dies" }`. Later: “Show me all Szell scenes” for consistency and pacing.

---

### 5. Book Series MCP
**Rank:** #5  
**API Required:** Yes (PostgreSQL)  
**Cost:** Free (open source); PostgreSQL hosting varies  
**How to Obtain:** Docker + PostgreSQL; GitHub: `rlryals/book-series-mcp`

**Fiction Use:** Built for series: characters, plot tracking, world-building, research, continuity. For a single novel like *Marathon Man*, it still helps with character arcs, plot threads, research notes (McCarthy era, diamond smuggling), and continuity across acts.

**Marathon Man Example:** Track: Babe’s arc (innocent → tortured → avenger), Szell’s movements (Paraguay → NY → bank), and timeline (Doc’s death → Babe’s abduction → climax at bank).

---

### 6. Mem0 / OpenMemory MCP
**Rank:** #6  
**API Required:** Hosted: Registration; Local: No  
**Cost:** Free tier; paid for higher usage  
**How to Obtain:** Hosted: app.openmemory.dev; Local: self-host

**Fiction Use:** Persistent memory across sessions. Stores facts, preferences, and prior decisions. For *Marathon Man*, it remembers that you prefer Goldman’s lean prose, your pacing choices, and continuity decisions.

**Marathon Man Example:** After you say “Babe’s father’s suicide should mirror Doc’s death structurally,” Mem0 stores it. Later, when editing, the assistant reminds you of that choice.

---

### 7. Sequential Thinking Ultra (Advanced Variant)
**Rank:** #7  
**API Required:** No  
**Cost:** Free  
**How to Obtain:** `npx -y @sequential-thinking/ultra` (if available)

**Fiction Use:** Adds bias checks, quality metrics, and branching. For *Marathon Man*, it flags when plot choices are driven by convenience (e.g., Babe “happens” to be at the bank). It scores reasoning quality and explores alternative plot paths before you commit.

**Marathon Man Example:** *"Is Babe's revenge at the bank justified?"* → Ultra explores multiple paths (legal, moral, thematic) and scores each for consistency with Babe’s character.

---

### 8. Sequential Thinking MAS (Multi-Agent System)
**Rank:** #8  
**API Required:** No  
**Cost:** Free  
**How to Obtain:** `npx -y @fradser/mcp-server-mas-sequential-thinking` (if available)

**Fiction Use:** Uses several agents (Factual, Emotional, Critical, Creative, Synthesis) for multi-angle analysis. For *Marathon Man*, Factual checks timeline, Emotional checks Babe’s trauma, Critical checks plot holes, Creative suggests alternatives, Synthesis combines the views.

**Marathon Man Example:** *"Should Szell die at Babe's hands?"* → MAS agents: Factual (evidence chain), Emotional (catharsis vs. emptiness), Critical (theme), Creative (alternatives), Synthesis (recommendation).

---

### 9. Enhanced Sequential Thinking (VitalyMalakanov)
**Rank:** #9  
**API Required:** No  
**Cost:** Free  
**How to Obtain:** Python package: `pip install mcp-thinking` or `python -m mcp_thinking` (if available)

**Fiction Use:** Adds 19 thinking modes (linear, creative, evaluative, etc.) and mode-specific reasoning. For *Marathon Man*, use creative mode for plot brainstorming (alternate endings for the bank scene), evaluative mode for consistency (Doc's death vs. Babe's abduction timeline), linear mode for timeline checks. The system can learn which modes work best for different tasks.

**Marathon Man Example:** *"Explore alternative outcomes for the bank climax"* → Enhanced Sequential Thinking switches to creative mode, generates paths (Babe kills Szell, Szell escapes, Babe hands him to police), then uses evaluative mode to score each for thematic fit.

---

### 10. Sequential Thinking (Rust Version)
**Rank:** #10  
**API Required:** No  
**Cost:** Free  
**How to Obtain:** `cargo run --release --bin ultrafast-mcp-sequential-thinking` (if available); requires Rust toolchain

**Fiction Use:** Same reasoning as the reference server, but faster and more efficient. For *Marathon Man*, use when running Sequential Thinking across many chapters, full-manuscript analysis, or multiple plot questions in one session. Lower latency and better performance for long documents.

**Marathon Man Example:** *"Analyze plot logic across all 25 chapters"* → Rust version processes the full manuscript quickly, returning timeline checks, character consistency, and plot-hole flags in seconds instead of minutes.

---

### 11. Zen MCP / PAL MCP
**Rank:** #11  
**API Required:** Yes (OpenAI, Google, Anthropic)  
**Cost:** Pay-per-use; roughly $30–100+/month  
**How to Obtain:** API keys from platform.openai.com, ai.google.dev, console.anthropic.com

**Fiction Use:** Routes work across models: GPT-4 for dialogue, Gemini for long-manuscript analysis, Claude for synthesis. For *Marathon Man*, use GPT-4 for Szell/Babe exchanges, Gemini for full-manuscript pacing, and Claude for overall coherence.

**Marathon Man Example:** Ask for “tense dialogue between Babe and Szell.” Zen routes to GPT-4 for dialogue; if you need full-manuscript pacing, it routes to Gemini; Claude synthesizes.

---

### 12. Style Emulation MCP
**Rank:** #12  
**API Required:** Yes (Anthropic)  
**Cost:** Pay-per-token  
**How to Obtain:** Custom build or community server; ANTHROPIC_API_KEY

**Fiction Use:** Matches your prose to a target style (e.g., Goldman). Analyzes sentence length, rhythm, dialogue ratio, and rewrites to fit. For *Marathon Man*, use Goldman’s lean, punchy style as the target.

**Marathon Man Example:** Feed Goldman’s prose, create a profile, then compare your draft. Get scores and rewrites like: “Shorten sentences; increase dialogue; match Goldman’s terse rhythm.”

---

### 13. Firecrawl MCP
**Rank:** #13  
**API Required:** Yes (Firecrawl API key)  
**Cost:** Free tier; paid plans ~$20+/month  
**How to Obtain:** firecrawl.dev; API key in dashboard

**Fiction Use:** Deep web scraping for research. For *Marathon Man*, scrape McCarthy era, diamond smuggling, Auschwitz dental units, Uruguay/Paraguay Nazi refuge, Division-style agencies. Convert pages to Markdown for quick reference.

**Marathon Man Example:** “Research McCarthy-era suicides and government pressure” → Firecrawl pulls articles, converts to Markdown, and you use them for Babe’s father’s backstory.

---

### 14. Brave Search / DuckDuckGo MCP
**Rank:** #14  
**API Required:** Brave: Yes (API key); DuckDuckGo: No  
**Cost:** Brave: 2,000 free queries/month; DuckDuckGo: Free  
**How to Obtain:** Brave: brave.com/search/api; DuckDuckGo: `npx -y @modelcontextprotocol/server-duckduckgo-search`

**Fiction Use:** Fast fact-checking and research. For *Marathon Man*, look up “safe deposit box procedures 1970s,” “Columbia campus 1974,” “diamond cutting Paraguay.” DuckDuckGo is free and privacy-focused; Brave offers more control.

**Marathon Man Example:** *"What did a Manhattan safe deposit box cost in 1974?"* → Search MCP returns facts to keep the bank climax grounded.

---

### 15. Exa MCP
**Rank:** #15  
**API Required:** Yes (Exa account)  
**Cost:** Varies; free tier often available  
**How to Obtain:** exa.ai; mcp.exa.ai endpoint

**Fiction Use:** Semantic search for deeper research. For *Marathon Man*, queries like “Nazi fugitives South America 1970s” or “dental torture psychological effects” return relevant, context-aware results.

**Marathon Man Example:** *"Find accounts of survivors' experiences with Nazi doctors"* → Exa finds articles, memoirs, and studies for Szell’s character.

---

### 16. Google Drive MCP
**Rank:** #16  
**API Required:** Yes (Google Cloud + OAuth)  
**Cost:** Free (Google account)  
**How to Obtain:** Google Cloud Console; enable Drive API; OAuth credentials

**Fiction Use:** Central store for drafts, research, and notes. Sync with Cursor for access to outlines, character sheets, and research. For *Marathon Man*, keep a Drive folder with timelines, Szell’s backstory, and scene drafts.

**Marathon Man Example:** “Pull my outline for Act III from Google Drive” → MCP fetches the doc; Claude uses it while drafting the bank climax.

---

### 17. GitHub MCP
**Rank:** #17  
**API Required:** Yes (GitHub token)  
**Cost:** Free for personal use  
**How to Obtain:** github.com/settings/tokens; Personal Access Token

**Fiction Use:** Version control for drafts. Branches for alternate plotlines, commits for milestones. For *Marathon Man*, use a `marathon-man` repo: main = current draft, branches for “Babe survives,” “Szell escapes,” etc.

**Marathon Man Example:** “Create a branch for the alternate ending where Babe doesn’t kill Szell” → GitHub MCP creates the branch; you can compare endings without losing the main draft.

---

### 18. Linear MCP
**Rank:** #18  
**API Required:** Yes (Linear API token)  
**Cost:** Free tier  
**How to Obtain:** linear.app → Settings → Personal API Keys

**Fiction Use:** Project management for novel tasks. Create issues for “Revise torture scene,” “Fact-check McCarthy era,” “Pacing pass Act II.” Use roadmap for milestones: Outline, Draft, First Revision, Beta.

**Marathon Man Example:** “Create an issue: Revise Szell’s death scene for thematic clarity” → Linear MCP creates the issue; you track it in your novel project.

---

### 19. Text-to-Speech MCP
**Rank:** #19  
**API Required:** Yes (Hume, OpenAI, or Google)  
**Cost:** Hume/OpenAI: pay-per-use; Google: free tier  
**How to Obtain:** dev.hume.ai, platform.openai.com, cloud.google.com/text-to-speech

**Fiction Use:** Read drafts aloud for rhythm, dialogue, and flow. For *Marathon Man*, listen to the “Is it safe?” scene and the bank climax. Catches awkward phrasing and flat dialogue.

**Marathon Man Example:** Send the torture scene to TTS; listen; notice if “Is it safe?” lands with the right rhythm and menace.

---

### 20. Anki MCP
**Rank:** #20  
**API Required:** No (Anki + AnkiConnect)  
**Cost:** Free  
**How to Obtain:** Anki desktop + AnkiConnect; `npx -y @ankimcp/anki-mcp-server`

**Fiction Use:** Flashcards for continuity: character facts, timeline, research. For *Marathon Man*, cards like “When did Doc die?” “Where are the diamonds?” “What is Babe’s Ph.D. topic?” reinforce consistency.

**Marathon Man Example:** Create cards: “Szell’s motivation” → “Retrieve diamonds; father died; must collect himself.” Review before writing Szell scenes.

---

### 21. Filesystem MCP
**Rank:** #21  
**API Required:** No  
**Cost:** Free  
**How to Obtain:** `npx -y @modelcontextprotocol/server-filesystem /path/to/novel`

**Fiction Use:** Direct file access for drafts, outlines, and notes. For *Marathon Man*, point at the novel folder so Claude can read chapters, character sheets, and research.

**Marathon Man Example:** “Read chapter 12 and my character sheet for Szell” → Filesystem MCP returns the files; Claude uses them for consistency.

---

### 22. Figma MCP
**Rank:** #22  
**API Required:** Yes (Figma account)  
**Cost:** Free tier  
**How to Obtain:** figma.com; OAuth or access token

**Fiction Use:** Storyboards, maps, character boards. For *Marathon Man*, create a map of Szell’s route (Paraguay → NY → bank), a timeline of events, or a visual outline.

**Marathon Man Example:** “Generate a storyboard for the bank climax” → Figma MCP can read your design; Claude uses it to keep scene blocking and geography consistent.

---

### 23. n8n MCP
**Rank:** #23  
**API Required:** Yes (n8n instance; cloud or self-hosted)  
**Cost:** Free (self-hosted); cloud plans vary  
**How to Obtain:** n8n.io; self-host or cloud

**Fiction Use:** Workflow automation: backups, word-count tracking, reminders. For *Marathon Man*, automate: “On save, back up to Drive” or “Every Sunday, send a progress summary.”

**Marathon Man Example:** Workflow: “When I tag a scene ‘revise,’ create a Linear issue” → n8n MCP triggers the workflow.

---

### 24. Pandoc MCP
**Rank:** #24  
**API Required:** No  
**Cost:** Free  
**How to Obtain:** `uvx mcp-pandoc` or `brew install pandoc`

**Fiction Use:** Convert Markdown drafts to DOCX, PDF, EPUB. For *Marathon Man*, export to DOCX for beta readers or PDF for submission.

**Marathon Man Example:** “Convert my manuscript to DOCX for my editor” → Pandoc MCP produces a formatted document.

---

### 25. Multi-Agent Debate MCP
**Rank:** #25  
**API Required:** Yes (multiple model APIs)  
**Cost:** Pay-per-use  
**How to Obtain:** Community server; requires API keys for each model

**Fiction Use:** Several models “debate” a choice (e.g., plot twist, character decision). For *Marathon Man*, run: “Should Babe kill Szell?” — multiple models argue different angles, and you choose or synthesize.

**Marathon Man Example:** Models debate: “Kill Szell” (catharsis) vs. “Hand him to authorities” (justice) vs. “Szell escapes” (sequel). You pick or blend.

---

### 26. Pattern Finder MCP
**Rank:** #26  
**API Required:** Depends on implementation  
**Cost:** Varies  
**How to Obtain:** Custom or community implementation

**Fiction Use:** Detects repetition, overused words, and structural patterns. For *Marathon Man*, scan for “Is it safe?” frequency, overused verbs, or similar scene openings.

**Marathon Man Example:** “Find all instances of 'safe' and 'safety'” → Pattern Finder returns locations; you decide where to trim or amplify.

---

### 27. Vectara MCP
**Rank:** #27  
**API Required:** Yes (Vectara API key)  
**Cost:** Free tier; paid for scale  
**How to Obtain:** vectara.com; API key + environment ID

**Fiction Use:** Semantic search across the manuscript. For *Marathon Man*, queries like “scenes where Babe feels betrayed” or “passages about his father” find relevant text even without exact phrases.

**Marathon Man Example:** “Find all scenes involving trust or betrayal” → Vectara returns thematic matches for revision and thematic consistency.

---

## Part II: How MCPs Talk to Each Other

MCPs are agents that can coordinate through the MCP host (e.g., Cursor). When you ask a question, Claude decides which MCPs to call and in what order. Results from one MCP can be passed to another.

### Orchestration Flow (Example: “Rewrite the torture scene in Goldman’s style and ensure continuity”)

```
1. Claude receives your request
2. Claude calls Knowledge Graph MCP: "Get Babe's state, Szell's motivations, torture timeline"
3. Knowledge Graph returns: Babe doesn't know; Szell suspects Doc told him; timeline: Doc dead → Babe abducted
4. Claude calls Style Emulation MCP: "Rewrite [scene] to match Goldman's style"
5. Style Emulation returns rewritten text
6. Claude calls Sequential Thinking MCP: "Validate: Does Babe's confusion make sense given Knowledge Graph data?"
7. Sequential Thinking confirms logic
8. Claude synthesizes and returns the final scene
```

### Marathon Man Example: “Should Babe kill Szell at the bank?”

```
Knowledge Graph MCP  → Babe's arc, Szell's crimes, Doc's death
        ↓
Sequential Thinking MCP → Logical implications of kill vs. arrest vs. escape
        ↓
Multi-Agent Debate MCP → Multiple models argue each option
        ↓
Claude → Synthesizes and presents options with reasoning
```

You issue one request; several MCPs collaborate in the background.

---

## Part III: How MCPs Can Create Their Own MCPs

Some MCPs (e.g., YepCode) can generate and run code. In theory, an MCP could create a new MCP server that exposes new tools. Example:

**You:** “I need a tool that analyzes emotional arcs in my manuscript.”

**YepCode-style MCP:**
1. Generates Python for the tool
2. Wraps it as an MCP server
3. Registers it with the host
4. You now have an “emotional_arc_analyzer” tool

**Marathon Man use:** You ask for “a tool that tracks Babe’s emotional state across chapters.” The MCP generates code that scores fear, rage, grief, and agency per chapter and exposes it as a tool. The system gains a new capability without manual coding.

**Current state:** YepCode and similar MCPs support code execution; full “MCP creates MCP” is still emergent. The pattern is: MCP executes code → code implements a new capability → capability can be exposed as a tool.

---

## Part IV: API and Registration Summary

| MCP | API/Registration | Cost | How to Obtain |
|-----|------------------|------|---------------|
| Knowledge Graph Memory | No | Free | npx @modelcontextprotocol/server-memory |
| Sequential Thinking | No | Free | npx @modelcontextprotocol/server-sequential-thinking |
| Cognee | Self-host: No; Hosted: Possibly | Free (self) | Docker or Python |
| Fireproof | No | Free | npm install |
| Book Series | PostgreSQL | Free (self-host DB) | Docker + PostgreSQL |
| Mem0 / OpenMemory | Hosted: Yes; Local: No | Free tier | app.openmemory.dev or self-host |
| Sequential Thinking Ultra | No | Free | npx (if available) |
| Sequential Thinking MAS | No | Free | npx (if available) |
| Enhanced Sequential Thinking | No | Free | Python package (if available) |
| Sequential Thinking (Rust) | No | Free | Cargo/Rust (if available) |
| Zen / PAL | OpenAI, Google, Anthropic | ~$30–100+/mo | API keys from each provider |
| Style Emulation | Anthropic | Pay-per-token | ANTHROPIC_API_KEY |
| Firecrawl | Firecrawl API key | ~$20/mo | firecrawl.dev |
| Brave Search | Brave API key | 2K free/mo | brave.com/search/api |
| DuckDuckGo | No | Free | npx |
| Exa | Exa account | Varies | exa.ai |
| Google Drive | Google OAuth | Free | Google Cloud Console |
| GitHub | GitHub token | Free | github.com/settings/tokens |
| Linear | Linear API token | Free tier | linear.app |
| Text-to-Speech | Hume/OpenAI/Google | Pay-per-use | dev.hume.ai, etc. |
| Anki | Anki + AnkiConnect | Free | Anki + addon |
| Filesystem | No | Free | npx |
| Figma | Figma account | Free tier | figma.com |
| n8n | n8n instance | Free (self) | n8n.io |
| Pandoc | No | Free | uvx or brew |
| Multi-Agent Debate | Multiple APIs | Pay-per-use | Per-model keys |
| Vectara | Vectara API key | Free tier | vectara.com |

---

## Part V: Similar Tools (Notion/Obsidian Alternatives)

If you avoid Notion and Obsidian, consider:

- **Local Markdown + Filesystem MCP:** Store outlines, character sheets, and notes as Markdown; use Filesystem MCP so Claude can read them.
- **Google Drive + Google Drive MCP:** Use Drive for structure and backups; MCP provides access from Cursor.
- **Book Series MCP + PostgreSQL:** Structured character, plot, and research storage without Notion.
- **Fireproof MCP:** JSON documents for continuity and “best of” passages; syncs locally or to cloud.

---

## Part VI: Cursor–Claude Fiction Writing Ecosystem

### Core Idea

Use Cursor as the main editor, Claude as the orchestrator, MCPs as tools, `.cursor/rules/` for writing rules, and Skills for specialized workflows.

### Ecosystem Example A: “Minimal” (Few MCPs, Rules-Driven)

**MCPs:** Knowledge Graph Memory, Sequential Thinking, Filesystem  
**Focus:** Memory, logic, and local files

**Structure:**
```
marathon-man-novel/
├── .cursor/
│   └── rules/
│       ├── prose-style.mdc      # Goldman-style rules
│       └── continuity.mdc       # Character/timeline checks
├── chapters/
├── characters/
├── research/
└── outline.md
```

**`.cursor/rules/prose-style.mdc`:**
```yaml
---
description: William Goldman-style prose for thriller
globs: "chapters/*.md"
alwaysApply: false
---

# Prose Style: Goldman Thriller

- Short, punchy sentences during tension
- Lean dialogue; avoid exposition in speech
- "Is it safe?"-style repetition for dread
- Concrete sensory detail over abstraction
```

**`.cursor/rules/continuity.mdc`:**
```yaml
---
description: Character and timeline continuity checks
globs: "chapters/*.md"
alwaysApply: false
---

# Continuity Rules

Before editing a chapter:
- Query Knowledge Graph for character states
- Verify timeline (Doc's death → Babe's abduction → bank)
- Check Babe's knowledge: he doesn't know about the diamonds
```

**MCP config (`.cursor/mcp.json` or Cursor settings):**
```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"]
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    },
    "sequential-thinking-ultra": {
      "command": "npx",
      "args": ["-y", "@sequential-thinking/ultra"]
    },
    "sequential-thinking-mas": {
      "command": "npx",
      "args": ["-y", "@fradser/mcp-server-mas-sequential-thinking"]
    },
    "sequential-thinking-enhanced": {
      "command": "python",
      "args": ["-m", "mcp_thinking"]
    },
    "sequential-thinking-rust": {
      "command": "cargo",
      "args": ["run", "--release", "--bin", "ultrafast-mcp-sequential-thinking"]
    },
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/path/to/marathon-man-novel"]
    }
  }
}
```

**Skills:** Optional `fiction-drafting` skill for step-by-step drafting.

---

### Ecosystem Example B: “Power” (Many MCPs, Skills-Driven)

**MCPs:** Knowledge Graph Memory, Sequential Thinking, Cognee, Fireproof, Firecrawl, Zen, Style Emulation, GitHub, Linear, Filesystem, Text-to-Speech  
**Focus:** Full pipeline from research to export

**Structure:**
```
marathon-man-novel/
├── .cursor/
│   ├── rules/
│   │   ├── prose-style.mdc
│   │   ├── continuity.mdc
│   │   └── research-mode.mdc
│   └── skills/
│       ├── fiction-drafting/
│       │   └── SKILL.md
│       ├── fiction-revision/
│       │   └── SKILL.md
│       └── continuity-audit/
│           └── SKILL.md
├── chapters/
├── characters/
├── research/
├── best-of/
└── outline.md
```

**`.cursor/skills/fiction-drafting/SKILL.md`:**
```markdown
---
name: fiction-drafting
description: Draft fiction scenes with Goldman-style prose, continuity checks, and research integration. Use when drafting new scenes or chapters.
---

# Fiction Drafting

## Workflow

1. **Context:** Query Knowledge Graph for character states and timeline
2. **Research:** If needed, use Firecrawl for facts (era, place, procedure)
3. **Draft:** Write scene; apply prose-style rules
4. **Validate:** Use Sequential Thinking to check plot logic
5. **Store:** Update Knowledge Graph with new facts
```

**`.cursor/skills/continuity-audit/SKILL.md`:**
```markdown
---
name: continuity-audit
description: Audit manuscript for character, timeline, and factual consistency. Use when revising or before final draft.
---

# Continuity Audit

## Steps

1. Query Knowledge Graph for all character states
2. Use Cognee to find potential inconsistencies
3. Use Vectara (if available) for thematic alignment
4. Flag scenes that need revision
5. Generate report with specific fixes
```

**MCP config:** Include all MCPs from Example B plus all 5 Sequential Thinking brothers, with API keys in env.

---

### Which Ecosystem Is More Intuitive?

**Example A (Minimal)** is more intuitive for:
- First-time MCP users
- Writers who prefer fewer tools
- Lower setup and cost
- Fast onboarding

**Example B (Power)** is more intuitive for:
- Writers who like structure and automation
- System-builders
- Full research → draft → revise → export workflows
- Willingness to manage APIs and config

**Recommendation:** Start with Example A. Add MCPs (Firecrawl, Cognee, Style Emulation, etc.) and Skills as your workflow grows. Example B becomes natural once you’re comfortable with the core stack.

---

## Part VII: Suggested .cursor/ Setup

### Directory Layout
```
.cursor/
├── rules/
│   ├── prose-style.mdc
│   ├── continuity.mdc
│   └── research-mode.mdc
├── skills/
│   ├── fiction-drafting/
│   │   └── SKILL.md
│   └── continuity-audit/
│       └── SKILL.md
└── mcp.json   # or use Cursor Settings > MCP
```

### MCP Configuration (.cursor/mcp.json or Cursor Settings)
```json
{
  "mcpServers": {
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"],
      "env": { "MEMORY_FILE_PATH": "./.cursor/memory.jsonl" }
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    },
    "sequential-thinking-ultra": {
      "command": "npx",
      "args": ["-y", "@sequential-thinking/ultra"]
    },
    "sequential-thinking-mas": {
      "command": "npx",
      "args": ["-y", "@fradser/mcp-server-mas-sequential-thinking"]
    },
    "sequential-thinking-enhanced": {
      "command": "python",
      "args": ["-m", "mcp_thinking"]
    },
    "sequential-thinking-rust": {
      "command": "cargo",
      "args": ["run", "--release", "--bin", "ultrafast-mcp-sequential-thinking"]
    },
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/absolute/path/to/novel"]
    }
  }
}
```

### Skills Usage

Skills teach the agent *how* to do tasks. For fiction:

- **fiction-drafting:** When to pull context, research, draft, validate, and update memory
- **continuity-audit:** When and how to run continuity checks
- **fiction-revision:** When to use Style Emulation, Pattern Finder, and TTS

Store Skills in `.cursor/skills/<skill-name>/SKILL.md` with clear descriptions so the agent can discover and apply them.

---

## Summary: Top 12 for One Novel

| Rank | MCP | Why |
|------|-----|-----|
| 1 | Knowledge Graph Memory | Story “truth” and consistency |
| 2 | Sequential Thinking (Reference) | Plot logic and decisions |
| 3 | Cognee | Thematic and hidden connections |
| 4 | Fireproof | Drafts, notes, “best of” |
| 5 | Book Series | Character, plot, research |
| 6 | Mem0 / OpenMemory | Cross-session memory |
| 7 | Sequential Thinking Ultra | Bias checks and quality |
| 8 | Sequential Thinking MAS | Multi-angle reasoning |
| 9 | Enhanced Sequential Thinking | 19 thinking modes, granular control |
| 10 | Sequential Thinking (Rust) | Performance at scale |
| 11 | Zen / PAL | Multi-model routing |
| 12 | Style Emulation | Voice and style matching |

Start with #1–4 and Filesystem. Add the Sequential Thinking brothers (#2, #7–10) for deeper plot analysis. Add the rest as your process demands.

---

---

## Appendix A: Sequential Thinking MCP Variants (5 Versions)

The Sequential Thinking ecosystem includes several variants. Use based on needs:

| Variant | Use Case | Install |
|---------|----------|---------|
| **Sequential Thinking (Reference)** | Standard stepwise reasoning | `npx -y @modelcontextprotocol/server-sequential-thinking` |
| **Sequential Thinking Ultra** | Bias detection, quality metrics, branching | `npx -y @sequential-thinking/ultra` (if available) |
| **Sequential Thinking MAS** | Multi-agent (Factual, Emotional, Critical, Creative, Synthesis) | `npx -y @fradser/mcp-server-mas-sequential-thinking` (if available) |
| **Enhanced Sequential Thinking (VitalyMalakanov)** | 19 thinking modes, granular control | Python package (if available) |
| **Sequential Thinking (Rust)** | Performance at scale | Cargo/Rust (if available) |

**Recommendation:** All five Sequential Thinking brothers are now in the curated list. Use Reference for day-to-day plot logic; add Ultra for bias/quality checks, MAS for multi-angle analysis, Enhanced for mode-specific reasoning, and Rust for full-manuscript speed. Toggle based on task to manage context.

---

## Appendix B: Using Sequential Thinking for Analysis

If Sequential Thinking MCP is installed, you can use it to analyze decisions in this guide:

1. **Install:** `npx -y @modelcontextprotocol/server-sequential-thinking`
2. **Add to Cursor:** Configure in Cursor Settings > MCP
3. **Use:** Ask Claude to "Use Sequential Thinking to analyze whether [your plot decision] is logically consistent" or "Use Sequential Thinking to break down the consequences of [character choice]"

Sequential Thinking will force stepwise reasoning before the model responds, making assumptions and implications explicit.

---

*Guide created for single-novel fiction writing. Marathon Man examples are for teaching only.*
