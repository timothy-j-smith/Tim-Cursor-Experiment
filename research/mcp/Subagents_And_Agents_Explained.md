# Subagents, Cloud Agents, Custom Agents & Agent Swarming: Explained for Fiction Writing

**Purpose:** Clarify how Cursor’s agent types relate and how to use them effectively for fiction writing with MCPs and APIs.

---

## 1. What Are Subagents?

**Subagents** are specialized AI assistants that run in **isolated contexts** with their own system prompts. They’re defined by you in `.md` files (YAML frontmatter + markdown body).

- **Where they live:** `.cursor/agents/` (project) or `~/.cursor/agents/` (user-wide).
- **What they do:** When the main Cursor agent decides a task fits a subagent’s **description**, it can delegate to that subagent. The subagent runs with its own instructions (the markdown body), so you get focused behavior without polluting the main chat.
- **Why they help:** They **preserve context** (exploration happens in a dedicated “head”), **specialize behavior** (e.g. “fiction continuity checker”), and **reuse** the same specialist across projects (user-level) or share with a team (project-level).

**For fiction writing:** A subagent can be your dedicated “fiction writer” that always uses Memory (Knowledge Graph), Sequential Thinking, Mermaid, duckduckgo-search, and your prose/continuity rules. The main agent stays general; the subagent is your novel-specific specialist.

---

## 2. How Do Cloud Agents, Subagents, Custom Agents & Swarming Relate?

| Concept | What It Is | Best For |
|--------|------------|-----------|
| **Subagents** | Specialized agents defined in `.cursor/agents/*.md` or `~/.cursor/agents/*.md`. Same Cursor session, different system prompt & delegation. | Focused tasks (e.g. “fiction continuity,” “prose polish”) so the main agent stays clean and the specialist is consistent. |
| **Custom Agents** | In Cursor’s docs, “custom agents” usually means **custom subagents**—i.e. the `.md` files you add. So “custom agent” ≈ “custom subagent.” | Same as subagents: your own specialists (fiction, research, outline, etc.). |
| **Cloud Agents** | Agents that run **in the cloud** (cursor.com/agents). You don’t need your laptop connected. Managed from the editor, Slack, Linear, GitHub. | Background work: bug fixes, quick todos, implementing an already-approved plan. Great when you’re offline or want “fire and forget.” |
| **Agent Swarming / Multi-Agent** | Running **multiple agents in parallel** (e.g. up to 8) on one prompt, each in isolated copies of the codebase (e.g. git worktrees). Cursor 2.0+ feature. | Splitting a big task into parallel streams (e.g. “Agent 1: outline, Agent 2: research, Agent 3: continuity check”) and merging results. |

**Correlation:**

- **Subagents** = *who* does the work (which specialist).
- **Cloud Agents** = *where* it runs (local vs cloud).
- **Swarming** = *how many* run at once (parallel agents on the same or related tasks).

You can combine them: e.g. delegate to a **fiction-writer subagent** and run that as a **cloud agent**, or run several **subagents in parallel** (swarm) for outline + research + continuity in one go.

---

## 3. Most Powerful & Helpful for Your Use Case (Fiction + MCPs/APIs)

**Your setup:** Fiction novels, Memory (Knowledge Graph), Sequential Thinking, Mermaid, walk-this-way, duckduckgo-search, GitKraken, GitHub, Linear, prose-style & continuity rules.

**Recommended focus:**

1. **Subagents (custom fiction specialist)**  
   - **Highest impact.** One subagent (e.g. `fiction-writer`) that always:
     - Uses Memory for characters/timeline/plot.
     - Uses Sequential Thinking for plot logic and big decisions.
     - Uses Mermaid for structure diagrams.
     - Uses duckduckgo-search for research.
     - Applies `.cursor/rules/prose-style.mdc` and `continuity.mdc` when editing chapters.
   - Gives you a single, repeatable “fiction mode” without re-explaining MCPs and rules every time.

2. **Cloud Agents**  
   - **Use when:** You want background work (e.g. “run continuity check on ch1–5,” “research 1974 Manhattan safe deposit boxes”) or you’re away from the machine.  
   - **Less central** than the subagent for the core “writing in Cursor” loop, but very useful for offload and async tasks.

3. **Agent Swarming (multi-agent parallel)**  
   - **Use when:** You have a big, divisible task (e.g. “outline book 2, research period details, and audit continuity for book 1”).  
   - **Powerful but heavier:** more tokens, more coordination. Best for planned “sprint” tasks rather than every single edit.

4. **MCPs & APIs**  
   - **Use inside the subagent.** The fiction-writer subagent’s system prompt should explicitly say: use Memory, Sequential Thinking, Mermaid, walk-this-way, duckduckgo-search; respect prose-style and continuity. That way, whenever you delegate to the fiction subagent, MCPs and APIs are used consistently.

**Summary:** For fiction + MCPs/APIs, the most powerful and helpful setup is a **custom fiction-writing subagent** that encodes your MCP workflow and rules. Add **Cloud Agents** for background/async work and **swarming** for occasional parallel big tasks.

---

## 4. Using Subagents Effectively with MCPs and APIs

- **One subagent, one job.** Examples: `fiction-writer` (draft/edit + continuity + prose), `fiction-researcher` (duckduckgo + Memory for facts), `fiction-outliner` (Sequential Thinking + Mermaid). You can have several.
- **Description = when to delegate.** The subagent’s `description` in the YAML is what the main agent uses to decide “this is a fiction task → use fiction-writer.” Be specific: e.g. “Fiction novel specialist. Uses Memory, Sequential Thinking, Mermaid, research. Use when the user is writing or editing fiction, checking plot/continuity, or needs story structure.”
- **MCPs in the prompt.** In the subagent’s markdown body, list which MCPs to use and when (e.g. “Before editing a chapter, query Memory for character states and timeline”).
- **Rules.** Reference your `.cursor/rules` (e.g. prose-style, continuity) so the subagent always applies them in the right globs (e.g. `chapters/*.md`).
- **APIs.** If you use external APIs (e.g. for research or style), mention them in the subagent so it knows to call them when appropriate.

Result: whenever you say “Use the fiction-writer subagent to revise Chapter 3,” the AI delegates to that specialist, which in turn uses your MCPs and rules in a consistent way.

---

## 5. Quick Reference

| Goal | Use |
|------|-----|
| Consistent fiction workflow with MCPs & rules | **Fiction-writing subagent** (project or user) |
| Background/async work without laptop | **Cloud Agents** |
| Several tasks in parallel (outline + research + continuity) | **Multi-agent / swarming** |
| “Custom agent” in Cursor | **Custom subagent** (`.cursor/agents/*.md` or `~/.cursor/agents/*.md`) |

The fiction-writing subagent file is created at `.cursor/agents/fiction-writer.md` and is ready to invoke for your novel work.
