# MCP Orchestration, Skills, and Fiction Writing: Full Picture

**Purpose:** Answer how MCPs work together, who orchestrates, how Skills tie in, what's missing, and a unified Sequential Thinking view.

---

## Part I: GitKraken and GitHub MCPs – Setup and Enablement

### Current Status

| MCP | Config | Status |
|-----|--------|--------|
| **GitKraken** | `gitkraken` in mcpServers; command `/opt/homebrew/bin/gk` | ✅ Configured; enable in Cursor Settings → Tools & MCP |
| **GitHub (Cursor native)** | `github-mcp` at top level; type github, token, repos | ✅ Cursor's built-in GitHub integration for Walk This Way |
| **GitHub (Official MCP)** | `github` in mcpServers; npx @modelcontextprotocol/server-github | ✅ Added; needs `GITHUB_PERSONAL_ACCESS_TOKEN` |

### GitHub MCP Token Setup

Add to `~/.zshrc` (use the same token as in github-mcp):

```bash
export GITHUB_PERSONAL_ACCESS_TOKEN="ghp_your_token_here"
```

Restart Cursor. The official GitHub MCP exposes tools: create branch, push files, search repos, manage issues/PRs.

---

## Part II: How MCPs Work Together and Who Orchestrates

### MCPs Do Not Talk to Each Other Directly

MCPs are **servers** that expose **tools**. They do not call each other. They sit behind a **host** (Cursor) that:

1. Starts MCP servers
2. Exposes their tools to the AI (Claude)
3. Lets the AI decide which tools to call and in what order

### The Orchestrator Is Claude (Via Cursor)

**Claude is the orchestrator.** When you ask a question:

1. **You** → Cursor → **Claude**
2. **Claude** decides which MCP tools to call, in what order
3. **Claude** calls MCP A → gets result → calls MCP B with that result → gets result
4. **Claude** synthesizes and responds to you

So: **MCPs collaborate only through Claude.** Claude passes data between them.

### Example: “Rewrite the torture scene in Goldman’s style and ensure continuity”

```
You → Claude
Claude → Memory MCP: "Get Babe's state, Szell's motivations, torture timeline"
Memory → Claude: [Babe doesn't know; Szell suspects Doc told him; timeline: Doc dead → Babe abducted]
Claude → walk-this-way (Filesystem): "Read torture scene"
Filesystem → Claude: [scene text]
Claude → Sequential Thinking: "Validate: Does Babe's confusion make sense given Memory data?"
Sequential Thinking → Claude: [Yes, logic holds]
Claude → You: [Rewritten scene + continuity notes]
```

Claude is the one that strings these calls together. MCPs never talk to each other directly.

---

## Part III: Do You Need to Orchestrate?

**No.** Claude does the orchestration. You do not need to:

- Manually choose which MCPs to use
- Call MCPs in sequence yourself
- Write orchestration scripts

**What you can do to help:**

1. **Be explicit in your prompt**  
   Example: *"Use Memory to check Babe's knowledge state, then use Sequential Thinking to validate the plot logic, then rewrite."*

2. **Use Skills to guide Claude**  
   The fiction-writing skill tells Claude when to use Memory, Sequential Thinking, mcp-mermaid, etc.

3. **Enable/disable MCPs**  
   In Cursor Settings → Tools & MCP, turn off MCPs you don’t need. Fewer tools can sometimes mean clearer choices for Claude.

4. **Use Rules**  
   `.cursor/rules/` can say: “Before editing a chapter, query Memory for character states.”

You don’t orchestrate; you **prompt** and **configure** so Claude orchestrates well.

---

## Part IV: How Skills Work with MCPs for Fiction Writing

### Flow: Skills → Claude → MCPs

| Step | What Happens |
|------|--------------|
| 1. Discovery | Cursor shows Claude the skill **name** and **description** |
| 2. Matching | Your message matches the fiction-writing skill (e.g., “edit chapter 3”) |
| 3. Application | Claude reads `fiction-writing/SKILL.md` |
| 4. Execution | Claude follows the workflow: “Before editing, use Memory; when checking plot logic, use Sequential Thinking; when visualizing, use mcp-mermaid” |
| 5. MCP Calls | Claude calls Memory → Sequential Thinking → mcp-mermaid as instructed |

### How It Ties Together

```
You: "Edit chapter 5 for continuity"
    ↓
Claude sees fiction-writing skill description matches
    ↓
Claude reads SKILL.md: "Before editing a chapter: Use Memory to fetch character states"
    ↓
Claude calls Memory MCP: "Get character states for chapter 5"
    ↓
Claude calls walk-this-way (Filesystem): "Read chapter 5"
    ↓
Claude applies continuity.mdc rule (verify timeline, knowledge states)
    ↓
Claude edits chapter 5 using Memory data + rules
    ↓
You get edited chapter
```

**Skills** tell Claude *when* and *how* to use MCPs. **Rules** tell Claude *what* to enforce (prose style, continuity). **MCPs** provide the tools (Memory, Sequential Thinking, Mermaid, etc.).

---

## Part V: What’s Missing for Fiction Writing

| Area | What You Have | What’s Missing |
|------|---------------|----------------|
| **Cursor** | Rules, Skills, MCPs | `.cursor/rules/` could add rules for: scene structure, dialogue, pacing |
| **Claude** | Orchestrator, reasoning | Explicit prompts that say “use Memory, then Sequential Thinking” when needed |
| **MCPs** | Memory, Sequential Thinking, Mermaid, Filesystem, DuckDuckGo, GitKraken, GitHub, Linear | Firecrawl (research), Fireproof (JSON continuity), Vectara (semantic search), Style Emulation (if you add Anthropic API) |
| **APIs** | GitHub token, Linear OAuth | Firecrawl, Brave/Exa (research), Anthropic (Style Emulation), Vectara (semantic search) |
| **Skills** | fiction-writing | Skills for: scene revision, dialogue pass, continuity pass, research, character-arc check |
| **Rules** | prose-style, continuity | Rules for: pacing, dialogue, scene beats, POV consistency |
| **Other Tools** | — | Anki (spaced repetition for continuity), Pandoc (export to DOCX), Pattern Finder (repetition/overused words) |

### Highest-Impact Additions

1. **Firecrawl API** – Web research for period details, locations, timelines.
2. **Fireproof MCP** – JSON storage for character sheets, scene summaries, timeline.
3. **More Skills** – e.g., “scene-revision”, “continuity-pass”, “research”.
4. **More Rules** – e.g., pacing, dialogue, POV.

---

## Part VI: Sequential Thinking Brothers – Unified Answers

*Simulated analysis from Reference, Ultra, MAS, Enhanced, Rust; synthesized into one or two answers.*

### Question 1: How do MCPs work together, who orchestrates, and do I need to orchestrate?

| Brother | Analysis |
|---------|----------|
| **Reference** | Stepwise: (1) MCPs expose tools. (2) Claude chooses which to call. (3) Claude passes results between calls. (4) You don’t orchestrate—Claude does. |
| **Ultra** | Bias check: You might overthink orchestration. Claude already does it. Quality: Trust Claude; use Skills/Rules to guide. |
| **MAS** | Factual: MCPs don’t call each other. Emotional: You don’t need to micromanage. Critical: Skills + Rules are enough. Synthesis: Claude orchestrates; you guide. |
| **Enhanced** | Linear mode: Claude → MCP A → MCP B → you. Evaluative: No manual orchestration needed. |
| **Rust** | Same logic; verified. |

**Unified Answer:** MCPs do not talk to each other. Claude orchestrates: it decides which MCP tools to call and in what order, passing data between them. You do not need to orchestrate; you prompt clearly, use Skills and Rules to guide Claude, and enable/disable MCPs as needed.

---

### Question 2: What am I missing for fiction writing (Cursor, Claude, MCPs, APIs, Skills, other tools)?

| Brother | Analysis |
|---------|----------|
| **Reference** | (1) Firecrawl for research. (2) Fireproof for continuity storage. (3) More Skills (scene-revision, continuity-pass). (4) More Rules (pacing, dialogue). (5) Style Emulation if you add Anthropic API. |
| **Ultra** | Bias: Don’t add everything at once. Prioritize: Firecrawl (research) > Fireproof (continuity) > extra Skills. Quality: Current stack is already strong; small additions help most. |
| **MAS** | Factual: APIs you lack—Firecrawl, Vectara, Style Emulation. Emotional: Skills give you control without complexity. Critical: Rules for pacing/dialogue are underused. Creative: Pattern Finder, Anki for revision. Synthesis: Firecrawl + Fireproof + 2–3 Skills + 2–3 Rules. |
| **Enhanced** | Creative: Pattern Finder, Style Emulation. Evaluative: Fireproof and Vectara give the biggest gain for continuity. |
| **Rust** | Same priorities; faster to implement: Firecrawl, Fireproof, Skills, Rules. |

**Unified Answer:** You’re missing: (1) **Firecrawl** (research for period/location details), (2) **Fireproof** (JSON continuity storage), (3) **More Skills** (scene-revision, continuity-pass, research), (4) **More Rules** (pacing, dialogue, POV), and (5) **Optional APIs** (Style Emulation, Vectara). Your current setup (Memory, Sequential Thinking, Mermaid, Filesystem, DuckDuckGo, GitKraken, GitHub, Linear, fiction-writing skill, prose/continuity rules) is already strong; these additions will optimize it further.

---

## Summary

| Topic | Answer |
|-------|--------|
| **Who orchestrates?** | Claude, via Cursor. MCPs do not call each other. |
| **Do you orchestrate?** | No. You prompt, use Skills/Rules, and enable/disable MCPs. |
| **Skills + MCPs** | Skills tell Claude when and how to use MCPs; MCPs provide the tools. |
| **What’s missing?** | Firecrawl, Fireproof, more Skills and Rules, optional Style Emulation/Vectara. |

---

*For GitHub token setup, see Part I. For API keys, see `API_KEYS_REFERENCE.md`.*
