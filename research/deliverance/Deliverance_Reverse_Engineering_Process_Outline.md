# Process Outline: Reverse-Engineering James Dickey’s *Deliverance*

**Purpose:** Show the full process and which MCPs, Cursor tools, and subagents Cursor Claude would use to reverse-engineer *Deliverance*. This document describes the workflow only; it does not perform the analysis.  
**Consultation:** The Sequential Thinking brothers (Reference, Ultra, MAS, Enhanced, Rust) are referenced where their reasoning style applies.  
**Novel:** *Deliverance* by James Dickey (1970)—Ed, Bobby, Lewis, Drew; Cahulawassee River; attack; cover-up; civilization vs. wilderness.

---

## Sequential Thinking Brothers’ Advice (Process Design)

- **Reference:** Run steps in order: ingest → break down → store → validate. One clear sequence.
- **Ultra:** Add checkpoints so we don’t assume Dickey’s choices without evidence; score each structural finding.
- **MAS:** Use Fiction Reverse Engineering for structure, Cognee for theme, Sequential Thinking for logic, Style/Editor for prose—multiple angles.
- **Enhanced:** Use creative mode for “what if” structure questions, evaluative mode when comparing our breakdown to the text.
- **Rust:** Do full-text consistency and timeline checks in one pass at the end for speed.

---

## Detailed Numbered Process Outline

### Phase 0: Session and Context

1. **Cursor launches; SessionStart Hook runs (if configured).**  
   - **Tool:** Cursor Hook (sessionStart).  
   - **Action:** Injects project context (e.g. “Reverse-engineer *Deliverance*”), optional story-bible placeholder, and any prose-DNA note for “Dickey-style” so the session starts with a clear goal.

2. **User opens the Tim Cursor Experiment (or Deliverance) project and issues the request.**  
   - **Example request:** “Reverse-engineer James Dickey’s *Deliverance* using our MCPs and tools. Produce structure, themes, key decisions, and prose technique—do not rewrite the novel.”  
   - **Tool:** User prompt; no MCP yet.

3. **Main Cursor Claude agent decides to delegate to the fiction-writing sub-agent.**  
   - **Tool:** Cursor sub-agent (fiction-writer).  
   - **Reason:** The request matches the sub-agent’s description (fiction, structure, continuity, analysis). The sub-agent will drive the workflow and call MCPs.

4. **Fiction-writer sub-agent loads applicable Cursor Rules.**  
   - **Tools:** Cursor Rules (e.g. prose-style.mdc, continuity.mdc).  
   - **Action:** Rules apply to how we treat prose and continuity during analysis (e.g. when quoting or summarizing scenes). Rules are advisory; the sub-agent follows them when editing or creating output files.

5. **Fiction-writer sub-agent invokes the fiction-drafting / continuity-audit Skills (as adapted for “reverse engineering”).**  
   - **Tools:** Cursor Skills (fiction-drafting, continuity-audit).  
   - **Action:** Skills define the order of operations: gather context → analyze → store → validate. For reverse engineering, “draft” becomes “document findings”; continuity-audit becomes “verify our breakdown against the text.”

---

### Phase 1: Ingest and Access the Novel

6. **Filesystem MCP is used to locate and read the manuscript (or permitted excerpts).**  
   - **Tool:** Filesystem MCP (walk-this-way or project-scoped).  
   - **Action:** If *Deliverance* (or a legal excerpt/summary) lives in the project or an allowed path, the sub-agent uses the Filesystem MCP to read it. If the user has only provided a summary or chapter list, that is used as the “ingest.”

7. **Firecrawl MCP and/or DuckDuckGo Search MCP gather public context about *Deliverance*.**  
   - **Tools:** Firecrawl MCP, DuckDuckGo Search MCP.  
   - **Action:** Retrieve publication history, critical summaries, Dickey’s stated intentions, and genre context (Southern Gothic, survival thriller). This grounds the reverse-engineering in external, verifiable context.

8. **Exa MCP or Perplexity MCP (if available) run semantic or synthesized research.**  
   - **Tools:** Exa MCP, Perplexity MCP.  
   - **Action:** Deeper queries (e.g. “*Deliverance* structure and themes,” “Dickey narrative technique”) to supplement Firecrawl/DuckDuckGo and avoid over-relying on a single source.

9. **Open Library MCP or Google Books MCP (optional) pull metadata and context.**  
   - **Tools:** Open Library MCP, Google Books MCP.  
   - **Action:** Confirm edition, publication date, and any high-level description used to validate our structural breakdown.

---

### Phase 2: Structural and Thematic Breakdown

10. **Fiction Reverse Engineering MCP is invoked to break the novel into structure and technique.**  
    - **Tool:** Fiction Reverse Engineering MCP.  
    - **Action:** The MCP (or the sub-agent using its tools) decomposes *Deliverance* into acts, major beats, POV, pacing, and narrative technique. Output: an explicit structural map (e.g. Part One / River / Attack / Cover-up / Return) and notes on how Dickey achieves effects.

11. **Sequential Thinking MCP (Reference) is used to reason stepwise about key plot decisions.**  
    - **Tool:** Sequential Thinking MCP (Reference).  
    - **Action:** For each major decision (e.g. “Should Ed kill the remaining attacker?” “Why the cover-up?”), the sub-agent calls Sequential Thinking to produce a clear cause-and-effect chain. This documents the *logic* of the novel’s choices, not just the events.

12. **Sequential Thinking Ultra is used to check bias and score alternatives.**  
    - **Tool:** Sequential Thinking Ultra.  
    - **Action:** For high-stakes conclusions (e.g. “Ed’s kill is justified”), Ultra explores alternative readings and scores them. Ensures the reverse-engineering does not assume a single “obvious” interpretation without considering others.

13. **Sequential Thinking MAS is used for multi-angle analysis of selected decisions.**  
    - **Tool:** Sequential Thinking MAS (Multi-Agent System).  
    - **Action:** Factual, Emotional, Critical, Creative, and Synthesis agents analyze one or more key decisions (e.g. the cover-up, the climb). Output: a unified view that captures plot logic, theme, and structure, aligned with the “brothers” approach in the Deliverance MCP Guide.

14. **Cognee MCP is used to surface thematic and symbolic links.**  
    - **Tool:** Cognee MCP.  
    - **Action:** Query Cognee (or a Cognee-indexed version of our breakdown) for connections between motifs (e.g. civilization vs. wilderness, the river, the bow, Ed’s transformation). Produces a thematic map that supports the structural map from step 10.

15. **Enhanced Sequential Thinking (optional) is used in creative or evaluative mode.**  
    - **Tool:** Enhanced Sequential Thinking.  
    - **Action:** Creative mode: “What if Ed didn’t climb?” or “What if they told the truth?” Evaluative mode: Score our structural breakdown against the text for consistency. Used where the sub-agent needs mode-specific reasoning.

---

### Phase 3: Document and Store Findings

16. **Knowledge Graph Memory MCP is updated with entities and relationships.**  
    - **Tool:** Knowledge Graph Memory MCP.  
    - **Action:** Store Ed, Bobby, Lewis, Drew, the river, the attackers, key events, and timeline. Store relationships (e.g. Ed kills attacker, cover-up involves Heck Tate). The graph becomes the canonical “story truth” for *Deliverance* as we reverse-engineered it.

17. **Fireproof MCP is used to store structured notes and “best of” passages.**  
    - **Tool:** Fireproof MCP.  
    - **Action:** Save JSON (or equivalent) for scene summaries, key quotes, structural beats, and technique notes. Enables later queries like “Show all scenes involving the cover-up” or “Best examples of Dickey’s prose in *Deliverance*.”

18. **MCP Mermaid is used to produce diagrams.**  
    - **Tool:** MCP Mermaid.  
    - **Action:** Generate diagrams: plot structure (acts/beats), character relationships, timeline, and optionally theme clusters. Output is stored in the project (e.g. as `.md` or image) for reference.

19. **Cursor Rules and project structure are respected when writing output files.**  
    - **Tools:** Cursor Rules (prose-style.mdc, continuity.mdc).  
    - **Action:** Any markdown or prose written (e.g. “Deliverance Reverse Engineering Report”) follows the project’s style and continuity conventions so it stays consistent with the rest of the workspace.

20. **GitHub MCP (optional) is used to create a branch or commit.**  
    - **Tool:** GitHub MCP.  
    - **Action:** If the project is under Git, the sub-agent can create a branch (e.g. `deliverance-reverse-engineering`) and commit the new files so the work is versioned.

---

### Phase 4: Validate and Refine

21. **Sequential Thinking MCP (Reference) is used again to validate consistency.**  
    - **Tool:** Sequential Thinking MCP (Reference).  
    - **Action:** Check that the documented structure and key decisions are logically consistent (e.g. timeline of Drew’s death, Bobby’s assault, Ed’s climb). Fix any gaps or contradictions in the written breakdown.

22. **Sequential Thinking Rust (if available) is used for a fast full-pass check.**  
    - **Tool:** Sequential Thinking (Rust).  
    - **Action:** Run the same consistency and timeline checks across the entire breakdown in one go for speed, matching the “Rust” brother’s role in the Deliverance guide.

23. **Professional Editor MCP is used to review the reverse-engineering report.**  
    - **Tool:** Professional Editor MCP.  
    - **Action:** Send the written report (structure, themes, technique) to the Editor MCP for feedback on clarity, completeness, and organization. Incorporate suggested improvements.

24. **Vectara MCP is used to verify thematic coverage.**  
    - **Tool:** Vectara MCP.  
    - **Action:** Semantic search over the report and any indexed text: e.g. “Find all mentions of civilization vs. wilderness” or “Scenes where Ed’s agency is central.” Ensures no major theme or beat was missed.

25. **Cursor Workflow Orchestrator MCP (if configured) is used to confirm the sequence.**  
    - **Tool:** Cursor Workflow Orchestrator MCP.  
    - **Action:** Optionally run a workflow that replays the intended order (ingest → Fiction Reverse Engineering → Sequential Thinking → Cognee → Memory → Fireproof → Mermaid → validate) and flags any step that was skipped or failed.

---

### Phase 5: Wrap-Up and Handoff

26. **Cursor Skill (continuity-audit) is used in “audit” mode on the output.**  
    - **Tool:** Cursor Skill (continuity-audit).  
    - **Action:** The continuity-audit skill (adapted for “reverse-engineering output”) drives a final pass: query Memory, check Cognee/Vectara for gaps, and produce a short “audit” note (e.g. “Structure complete; themes X, Y, Z documented; timeline verified”).

27. **Stop Hook (if configured) runs.**  
    - **Tool:** Cursor Hook (stop).  
    - **Action:** Optionally run a word-report or session-summary script so the user has a record of what was done (e.g. files created, MCPs called).

28. **User receives the final deliverable.**  
    - **Deliverable:** A reverse-engineering report (and optionally diagrams, Memory graph, Fireproof docs) that describes *Deliverance*’s structure, key decisions (with Sequential Thinking brothers’ reasoning), themes (with Cognee), and prose technique—without rewriting the novel.

---

## Summary: MCPs and Cursor Tools Used (in order of use)

| Step range   | MCPs used                                                                 | Cursor tools used                                      |
|-------------|---------------------------------------------------------------------------|--------------------------------------------------------|
| Phase 0     | —                                                                         | SessionStart Hook, fiction-writer sub-agent, Rules, Skills |
| Phase 1     | Filesystem, Firecrawl, DuckDuckGo, Exa, Perplexity, Open Library/Google Books | —                                                      |
| Phase 2     | Fiction Reverse Engineering, Sequential Thinking (Ref, Ultra, MAS), Cognee, Enhanced Sequential Thinking | —                                                      |
| Phase 3     | Knowledge Graph Memory, Fireproof, MCP Mermaid                             | Rules; optional GitHub MCP                              |
| Phase 4     | Sequential Thinking (Reference, Rust), Professional Editor, Vectara, Cursor Workflow Orchestrator | —                                                      |
| Phase 5     | —                                                                         | Continuity-audit Skill, Stop Hook                      |

**Subagent:** Fiction-writer sub-agent is used from step 3 through the end to run the workflow and call the MCPs above.  
**No execution:** This outline describes the process only; it does not perform the reverse engineering of *Deliverance*.

---

*Process outline for reverse-engineering *Deliverance* with Sequential Thinking brothers’ input. Use this as the roadmap when you are ready to run the task.*
