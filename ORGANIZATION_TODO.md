# Organization TO DO List

Based on recommendations from Cursor analysis and Sequential Thinking MCP.

---

## Completed ✓

- [x] Query Sequential Thinking MCP for file organization and categorization advice
- [x] Execute reorganization (folders, moves, .cursor structure)
- [x] Create ORGANIZATION_CHANGELOG.md documenting changes

---

## Immediate / One-Time

- [ ] **Verify reorganization** – Confirm all files moved correctly; update any hardcoded paths in scripts or docs
- [ ] **Update Foam/wiki links** – If you use Foam wikilinks (`[[file]]`), links may need path updates after moves
- [ ] **Collapse Foam sections when desired** – Click the chevron (▶/▼) next to OUTLINE, TIMELINE, ORPHANS, etc. to collapse/expand

---

## Future Setup (Optional)

- [ ] **Add .cursor/commands/** – Create custom Cursor commands when needed
- [ ] **Add .cursor/prompts/** – Store reusable prompts for future sessions
- [ ] **File Tree Context extension** – Optional: install if you want automated file-tree generation for AI context
- [ ] **Categorization script** – Consider a simple script to auto-move new files by prefix (e.g., `MCP_*.md` → `research/mcp/`) if you adopt naming conventions

---

## Ongoing Habits

- [ ] **Use naming conventions for new research** – Prefix files by category (e.g., `MCP_`, `Fiction_`, `Deliverance_`) to make future auto-categorization easier
- [ ] **Drop new research into the correct folder** – Prefer `research/<category>/` over root
- [ ] **Review root periodically** – Keep root clean; move stragglers into `research/general/` or appropriate category

---

## Foam Quick Reference

**Yes, Foam creates** the bottom File Explorer sections: OUTLINE, TIMELINE, ALL LINKS, TAG EXPLORER, NOTES, ORPHANS, PLACEHOLDERS, NOTEPADS, COMMANDS.

**To hide them temporarily:** Click the section header (chevron) to collapse. Click again to expand.

**Foam use cases:** Wiki-style links between markdown notes (`[[other-note]]`), graph view, backlinks, orphan detection. Great for interconnected research.

---

## Extension Recommendation (Sequential Thinking)

**Best approach:** A clear folder structure matters more than extensions. Organize folders first.

**Optional extension:** **File Tree Context** – auto-generates a file tree for AI context; useful if you reference structure in prompts.

**Not needed for organization:** SortMyFiles, Folder Templates – helpful but not required for a neat hierarchy.
