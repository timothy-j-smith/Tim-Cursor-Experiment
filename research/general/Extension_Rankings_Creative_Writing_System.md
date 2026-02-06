# Extension Rankings for Creative Writing System

**Date:** February 6, 2025  
**Context:** Cursor-Claude feedback + Sequential Thinking MCP analysis  
**Purpose:** Rank 23 extensions from most to least helpful for your Creative Writing System (fiction, MCPs, .cursor/rules, research workflow).

---

## Ranked Outline (Most → Least Helpful)

### 1. StoryCraftr (StoryCraftr)
StoryCraftr is an AI-powered writing assistant built for fiction authors, offering outline generation, character development, worldbuilding tools, and real-time chat with an AI writing partner directly inside VS Code/Cursor. It supports chapter generation and insertion, iterative content refinement via commands like `!iterate`, `!outline`, and `!worldbuilding`, and integrates seamlessly with your existing editor workflow. It requires an OpenAI API key (or OpenRouter/Ollama), which you already manage in your workspace. For your Creative Writing System, StoryCraftr directly supports the Marathon Man–style thriller structure, character consistency, and plot logic—complementing your continuity and prose-style rules. **~345 installs, MIT license, beta.**

---

### 2. WTANIWE – Writing Tool, An Integrated Writing Environment (luke-callaghan)
WTANIWE is a fiction-focused VS Code extension that uses Git for precise version tracking, allowing you to save manuscript versions exactly when needed and view diffs between drafts—far more control than typical word processor history. It organizes writing through a structured outline with Chapters and Work Snips (snippets not yet assigned to chapters), imports from .docx, .odt, .html, and .md, and exports to industry-standard publishing formats. For your system, WTANIWE fits your preference for tight organization and re-readability: chapters map to your research/categorization mindset, and Git-based versioning aligns with your existing `push-to-github.sh` workflow. **~200 installs, free.**

---

### 3. Well Written (ZakladWebdeweloperski)
Well Written transforms VS Code into a novel-writing environment with a custom `.wrt` draft format, word wrap by default, and distraction-free editing. It uses hierarchical scene markers (`$` for scenes, `$$` for chapters, `$$$` for parts) that support folding, outline navigation, and breadcrumbs—markers are excluded from final output. It includes markdown headers for extra structure, single- and multi-line comments excluded from word count, and built-in repetition detection to identify and improve repeated phrases. For your Creative Writing System, Well Written directly supports scene/chapter/part structure (Marathon Man–style pacing), reduces prose clutter via repetition detection, and keeps your manuscript organized without cluttering the root folder. **~20 installs, free.**

---

### 4. writingHelper (istarwyh)
writingHelper provides word collocation suggestions and word-group completion to help you write English fluently and naturally—useful for both fiction and non-fiction. It works with `.txt`, `.md`, `.latex`, and `.tex` files, displays word count in the status bar, and includes a timer (Option+Q) to track writing sessions. For your system, writingHelper supports prose quality and style consistency, aligns with your prose-style rules, and works across your research markdown and fiction drafts. **~15,000 installs, 3.5★ rating.**

---

### 5. Continuity (Hackerware LLC)
Continuity provides synthetic memory for AI coding assistants, storing architectural decisions and project context in a `.continuity/` folder as plain JSON that Cursor and other AI tools can automatically read across sessions. It uses MCP and offers 5 free decisions to start, with paid plans from $15/month. For your Creative Writing System, Continuity is powerful for maintaining story context: character details, world rules, plot threads, and stylistic decisions can persist so Cursor’s AI stays consistent with your continuity.mdc rules. It complements—rather than replaces—your existing .cursor/rules for plot logic and prose style. **MCP-based, paid.**

---

### 6. Cursor Helper (ClarityStorm)
Cursor Helper enhances AI-assisted work with smart notifications (task completion, context capacity warnings, file confirmations), a prompt template library for saving and reusing effective prompts with variable substitution, and context window monitoring. It runs locally with no telemetry. For your Creative Writing System, the prompt template library aligns with your .cursor/prompts folder and helps you standardize fiction prompts (e.g., continuity checks, prose polish). Notifications keep you aware during long AI generation sessions. **~15 installs, free.**

---

### 7. Screenshot to Cursor Chat (Malekai Mischke)
This extension captures screenshots and sends them directly to Cursor chat with a single shortcut (Control+Command+Shift+4), eliminating manual drag-and-drop. It is macOS-only and requires `pngpaste` (via Homebrew). For your Creative Writing System, you can share reference images (e.g., plot diagrams, style guides, research screenshots) with Cursor’s AI for context-aware feedback. Ideal for your MacBook Air and Mac Studio setup. **5★ rating, free.**

---

### 8. Cursor Notepads Explorer (JKCS)
Cursor Notepads Explorer lets you preview and manage Notepads content from all workspaces in a browser, with planned features for batch import/export and content search. For your Creative Writing System, Notepads are useful for quick scratch ideas, character notes, and plot snippets—this extension makes them easier to browse and organize alongside your research folders. **~273 installs, free.**

---

### 9. Cursor Notifier (MacOS)
Cursor Notifier (or similar MCP/script solutions) sends native macOS notifications when AI agent tasks complete, so you can step away during long-running generations and return when done. For your Creative Writing System, this reduces the need to watch the screen during outline generation, chapter drafting, or continuity checks. **Various implementations (MCP, bash scripts).**

---

### 10. Hide My Secrets (Emad Alashi)
Hide My Secrets obscures sensitive values in YAML and JSON config files (e.g., API keys, tokens) so they aren’t visible on screen. For your Creative Writing System, this protects API keys referenced in API_KEYS_REFERENCE.md and MCP config when sharing your screen or screenshots. **~625 installs, 5★, free.**

---

### 11. Cursor Light Theme (Wilbur Liu)
Cursor Light Theme provides a light color scheme for Cursor (“the missing light theme”). For your Creative Writing System, this is an ergonomics choice—reduces eye strain during long writing sessions if you prefer light backgrounds. **~976 installs, free.**

---

### 12. WTANIWE (web) (luke-callaghan)
Web extension variant of WTANIWE with the same fiction-writing features. Ranked separately in case you prefer the web extension format; otherwise, use the standard WTANIWE (#2).

---

### 13. Ogg (Intriq)
Ogg is an AI-powered extension for Azure DevOps that improves user story quality with “The Writer,” “The Critic,” and “The Sherpa” agents. It is built for software project management, not fiction. For your Creative Writing System, relevance is low unless you treat story beats like user stories—possible but not a primary fit. **Paid, 30-day trial.**

---

### 14. XML Tools (Josh Johnson)
XML Tools provides XML editing, formatting, and validation. For your Creative Writing System, relevance is minimal unless you work with XML-based formats (e.g., some ebook or publishing schemas). **Technical utility.**

---

### 15. Docker (Microsoft)
Docker supports containerized development environments. For your Creative Writing System, relevance is low—useful only if you run writing tools or AI services in containers. **Dev-focused.**

---

### 16. AgentDNA (Haizhou Wang)
Could not find a VS Code extension by this name. AgentDNA exists as a Python package for “Rubix agent DNA” (trust/node utilities), not as an editor extension. If you meant a different extension, please share the exact marketplace link.

---

### 17. Dumbify (Eugene CHOY)
Could not find a VS Code extension named Dumbify by Eugene CHOY. Dumbify.com is a task-management platform; Dumbisense is a joke extension that adds error squiggles to every word. Clarification needed if you had a specific tool in mind.

---

### 18. Novel style revision (tenmao)
Could not find an extension with this exact name by tenmao. **ReVision** (XiaodiYan) offers AI-powered style revision (professional, formal, casual, poetic, etc.) using OpenAI—this may be the closest match. If so, it would rank higher (~#4–5) for prose style and revision.

---

### 19. Prose Minion: Writing Toolkit (Okey Landers)
Could not find “Prose Minion” by Okey Landers. OkeyLanders publishes **Pixel Minion** (AI image/SVG generation), not a prose toolkit. If the name differs, please share the marketplace link.

---

### 20. Novel Assistant (Arnel Isiderio Robles)
Could not find a VS Code extension by this name/author. **novel-vscode** (BennyKok) integrates the Novel.sh editor for markdown editing—this may be related. If Novel Assistant exists elsewhere, please share the link.

---

### 21. WriterDown (Ekin Ertac)
Could not find a VS Code extension named WriterDown by Ekin Ertac. WriteDown.pro is a standalone Markdown editor for the AI era, not a VS Code extension. Ekin Ertac’s known extensions are Auto Package Installer and Better Faster Search.

---

### 22. cursor-index (wiredforge)
cursor-index adds line number, byte index, and character index to the status bar, with current support for JavaScript/TypeScript. For your Creative Writing System, relevance is low—it targets developers debugging code, not fiction writers. **~680 installs.**

---

### 23. Cursor Light Theme (Wilbur Liu) — duplicate
Already covered at #11. If this was meant as a separate theme variant, no additional info found.

---

## Summary

| Tier | Extensions |
|------|------------|
| **Essential (1–5)** | StoryCraftr, WTANIWE, Well Written, writingHelper, Continuity |
| **High value (6–9)** | Cursor Helper, Screenshot to Cursor Chat, Cursor Notepads Explorer, Cursor Notifier |
| **Supporting (10–11)** | Hide My Secrets, Cursor Light Theme |
| **Low relevance (12–16)** | WTANIWE web, Ogg, XML Tools, Docker |
| **Unverified / unclear (17–23)** | AgentDNA, Dumbify, Novel style revision, Prose Minion, Novel Assistant, WriterDown, cursor-index |

---

## Recommendations

1. **Install first:** StoryCraftr, WTANIWE, Well Written, writingHelper.
2. **Consider:** Continuity (if budget allows) for persistent story context.
3. **Cursor workflow:** Cursor Helper, Screenshot to Cursor Chat.
4. **Clarify:** Novel style revision (ReVision?), Prose Minion, Novel Assistant, WriterDown, AgentDNA, Dumbify—share marketplace links if available.
