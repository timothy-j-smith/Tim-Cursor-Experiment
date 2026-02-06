# Fiction Writing Recommendation: How to Proceed Within the Cursor Ecosystem

**Purpose:** A recommendation (Claude + Sequential Thinking) on how to proceed with fiction writing using .py, .yaml, MCPs, APIs, Skills, Rules, Commands, Hooks, and all tools we've uncovered.

**Scope:** Walk This Way, Scalpel & Hose methodology, neurodivergent-first workflow.

---

## Part I: The Full Tool Stack

### Layer 1: Python (.py) – Scripts and Automation

| Script | Purpose | How to Use |
|--------|---------|------------|
| **word_report.py** | Word count by chapter and Act | Run via terminal; output Word Report for NOVEL PLAN |
| **lint_prose.py** | Overused words (was/were, frequency, static) | Run after edits; output flagged words and locations |
| **index_chapters.py** | Build inverted index (character, location, theme) | Run periodically; outputs JSON index for search |
| **tag_validator.py** | Validate YAML frontmatter tags | Run before commits; ensures POV, tension, etc. are set |
| **extract_frontmatter.py** | Parse YAML from chapters for indexing | Used by index_chapters.py or Hooks |

**Example `word_report.py`:**

```python
#!/usr/bin/env python3
"""Word count by chapter and Act for fiction manuscript."""
import os
from pathlib import Path

def count_words(file_path):
    with open(file_path) as f:
        return len(f.read().split())

def main():
    chapters_dir = Path("chapters")
    act1, act2, act3 = [], [], []
    for f in sorted(chapters_dir.glob("ch*.md")):
        n = count_words(f)
        ch = int(f.stem[2:]) if f.stem[2:].isdigit() else 0
        if ch <= 10: act1.append(n)
        elif ch <= 20: act2.append(n)
        else: act3.append(n)
    print("Act I:", sum(act1), "words")
    print("Act II:", sum(act2), "words")
    print("Act III:", sum(act3), "words")
    print("Total:", sum(act1) + sum(act2) + sum(act3), "words")

if __name__ == "__main__":
    main()
```

---

### Layer 2: YAML (.yaml) – Configuration and Metadata

| File | Purpose | How to Use |
|------|---------|------------|
| **outline.yaml** | Act > Chapter > Scene hierarchy | Single source of structure; load before prompts |
| **characters.yaml** | Tier 1/2 character sheets | Load into Memory MCP or pass as context |
| **prose_dna.yaml** | Voice, style, constraints | System message or Rules |
| **tags_schema.yaml** | Valid tags (POV, tension, theme) | Reference for tagging; validate against this |
| **hooks.json** (JSON, not YAML) | Hook configuration | Cursor reads hooks.json; defines sessionStart, afterFileEdit, etc. |
| **mcp.json** | MCP server configuration | Cursor reads; defines which MCPs are available |
| **.cursor/rules/*.mdc** | Rules with YAML frontmatter | description, globs, alwaysApply; Cursor applies to matching files |

**Example `outline.yaml`:**

```yaml
act_i:
  chapters: [1, 2, 3, 4, 5, 6, 7, 8]
  arc: "Setup, ordinary world"
act_ii:
  chapters: [9, 10, 11, 12, 13, 14, 15, 16]
  arc: "Rising action, stakes"
act_iii:
  chapters: [17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
  arc: "Climax, resolution"
```

**Example chapter frontmatter (YAML in .md):**

```yaml
---
chapter: 26
pov: Maxanne
tension: high
characters: [Maxanne, WBCN crew, bands]
plot_threads: [Battle of the Bands, Act III transition]
status: revise
---
```

---

### Layer 3: MCPs – Tools Claude Can Call

| MCP | Use For |
|-----|---------|
| **memory** | Character states, plot threads, timeline; query before editing |
| **sequential-thinking** | Plot logic, character decisions; stepwise reasoning before rewrites |
| **mcp-mermaid** | Plot structure, character relationships, timeline diagrams |
| **walk-this-way** | Read/write chapters, character sheets, outlines |
| **duckduckgo-search** | Research (e.g., 1970s Boston radio, Lincoln-Sudbury) |
| **gitkraken** | Branches, commits, diffs for draft versions |
| **github** | Push drafts, create branches for alternate plotlines |

---

### Layer 4: Cursor Skills and Rules

| Item | Purpose |
|------|---------|
| **fiction-writing** (Skill) | When to use Memory, Sequential Thinking, Mermaid; workflow |
| **prose-style.mdc** (Rule) | Goldman-style prose; apply to `chapters/*.md` |
| **continuity.mdc** (Rule) | Character/timeline checks before editing |
| **MCP Reality Check** (Skill, proposed) | Grounds agent in MCP truth; prevents fabrications |

---

### Layer 5: Cursor Hooks – Lifecycle Automation

| Hook | Fiction Use | Example |
|------|-------------|---------|
| **sessionStart** | Inject STORY_BIBLE, PROSE_DNA, CREATIVE_COLLABORATOR as context | Load project DNA at session start |
| **afterFileEdit** | Run lint_prose.py or format script after edits | Auto-flag overused words |
| **beforeSubmitPrompt** | Validate prompt has `<chapter>`, `<goal>`, etc. | Enforce XML tag structure |
| **beforeReadFile** | Block sensitive files from model | Deny access to personal notes |
| **stop** | Log session, trigger Word Report | End-of-session summary |

**Example `hooks.json` (project-level):**

```json
{
  "version": 1,
  "hooks": {
    "sessionStart": [{"command": ".cursor/hooks/session-init.sh"}],
    "afterFileEdit": [{"command": ".cursor/hooks/lint-prose.sh"}],
    "stop": [{"command": ".cursor/hooks/session-summary.sh"}]
  }
}
```

---

### Layer 6: XML/Structured Tags – Prompt Structure

Use in prompts for explicit scope:

```xml
<chapter file="Chapter_26_the_battle_begins.txt">
<goal>rewrite chapter 26 to achieve 8/10 level prose</goal>
<specific>fun, exciting, energetic; Act II to Act III transition; Battle of the Bands</specific>
<constrain>no purple prose; show don't tell</constrain>
<technique>eliminate phony prose; replace with respectable prose</technique>
<character>Maxanne, WBCN crew, bands, Lincoln Sudbury</character>
<thinking>What elevates this chapter? What creates tension? How does it set up Act III?</thinking>
</chapter>
```

---

## Part II: Recommended Workflow

### Phase 1: Setup (One-Time)

1. Create `.cursor/rules/` with prose-style.mdc, continuity.mdc
2. Create `fiction-writing` skill in `~/.cursor/skills/`
3. Add `outline.yaml`, `characters.yaml`, `prose_dna.yaml` to project
4. Create `word_report.py`, `lint_prose.py` in `scripts/`
5. Create `.cursor/hooks.json` and hook scripts
6. Enable MCPs: memory, sequential-thinking, mcp-mermaid, walk-this-way, duckduckgo-search, gitkraken, github

### Phase 2: Per-Chapter Workflow

1. **Before editing:** Query Memory for character states; load outline.yaml
2. **Prompt:** Use XML tags (chapter, goal, constrain, thinking)
3. **Thinking block:** Ask Sequential Thinking to reason before rewrite
4. **Edit:** Claude rewrites; afterFileEdit hook runs lint_prose
5. **After edit:** Update Memory with new character states; commit to Git

### Phase 3: Per-Session Workflow

1. **sessionStart:** Load STORY_BIBLE, PROSE_DNA, CREATIVE_COLLABORATOR
2. **Work:** Follow Phase 2 per chapter
3. **stop:** Run Word Report; log session

---

## Part III: Sequential Thinking Recommendation

**Step 1:** The tools we've identified (Python, YAML, MCPs, Skills, Rules, Hooks, XML) form a coherent stack. Each layer serves a purpose: automation (Python), structure (YAML), reasoning (MCPs), guidance (Skills/Rules), lifecycle (Hooks), scope (XML).

**Step 2:** Priority order: (1) Rules and Skills first—they're free and immediate. (2) MCPs—already configured. (3) XML tags in prompts—no setup. (4) YAML frontmatter—add as you go. (5) Python scripts—build incrementally. (6) Hooks—add when scripts exist.

**Step 3:** The Refactoring/Debugging/Testing/Linting/Compiling/Git/Functions metaphor from your Walk This Way example maps cleanly. Use them as checklists, not literal code steps.

**Step 4:** Hooks are underused. sessionStart for context injection and afterFileEdit for linting are high-impact, low-effort.

**Conclusion:** Proceed in the order above. Start with Rules, Skills, and XML tags. Add YAML frontmatter to chapters. Build word_report.py and lint_prose.py. Then add Hooks. The full stack is achievable within the Cursor ecosystem.

---

*Report 1 of 2. See Unified_Chat_Summary_Report.md for the full chat summary and Sequential Thinking Brothers' unified perspective.*
