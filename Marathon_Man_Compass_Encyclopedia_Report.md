# Fiction Writing MCP Guide: Compass Writing System & Marathon Man — Encyclopedic Edition

**Scope:** Writing a single creative fiction novel within the Compass Writing System and its haunting ecosystem, with full orchestration of MCPs, Cursor tools, sub-agents, and cloud agents.  
**Teaching Example:** *Marathon Man* by William Goldman (thriller: Babe Levy, Dr. Christian Szell, Doc Levy, the Division, diamonds, "Is it safe?," bank climax).  
**Purpose:** Choose and use every available MCP and Cursor capability (Rules, Skills, Commands, Prompts, Snippets, Hooks, subagents, and more) specifically for one novel.  
**Practical:** Install commands, API notes, and copy-paste examples for `mcp.json` and `.cursor/` configuration throughout.  
**Teaching device:** *Marathon Man* is the reference novel used to explain the system; you swap in your own novel and apply the same structure and workflow.

This report revives and expands the Fiction Writing MCP Guide Curated for One Novel by incorporating all MCPs (none excluded), all Cursor tools (Hooks, Skills, Commands, Prompts, Rules, Snippets, Bugbots, subagents, cloud agents, and the native browser where applicable), and the Compass Writing System. It emphasizes sub-agents as the special secret sauce that can make this creative writing ecosystem groundbreaking, and explains who calls them, how they are put to work, and how they coordinate with the Sequential Thinking brothers and other MCPs. Responses are written in detailed full sentences rather than choppy bullets, so you can read in depth how the entire ecosystem would be used to evaluate and support a single novel such as *Marathon Man*.

---

## Part I: Complete MCP List (All MCPs, No Exclusions) — Detailed Marathon Man Use

The following section describes every MCP relevant to fiction writing and to the Compass Writing System. Each entry explains in full sentences how that MCP would be used when writing or editing a novel like *Marathon Man*, so that story truth, plot logic, research, style, and export remain consistent and actionable.

### 1. Knowledge Graph Memory MCP (official Anthropic server-memory)

The Knowledge Graph Memory MCP stores characters, relationships, plot threads, and world-building in a structured graph that you can query like a database. For *Marathon Man*, you would store Babe Levy as an entity with attributes such as history Ph.D. candidate at Columbia, marathon runner, and the weight of his father’s McCarthy-era suicide. You would store Dr. Christian Szell with attributes including former Nazi dentist, keeper of diamonds taken from Auschwitz prisoners, and the refrain "Is it safe?" You would store Doc Levy as Babe’s brother, secret agent for the Division, and his relationship to Szell (killed by Szell). When you ask "Who knows about the diamonds?" the graph returns Szell, Doc (deceased), and Division agents—but not Babe, who remains ignorant until late in the story. When you ask "When did Doc die relative to Szell’s arrival in New York?" you receive a clear timeline. This keeps your story’s canonical truth consistent across chapters and revisions and prevents plot holes. For a question such as "What are Babe’s unresolved conflicts?" the Knowledge Graph can return his father’s suicide, Doc’s death, Szell’s torture, and the diamonds, and it can track Babe’s arc from innocent graduate student to victim to avenger at the bank. The graph becomes the single source of truth for the novel.

### 2. Sequential Thinking MCP (Reference)

The Sequential Thinking MCP (Reference) forces the model to reason step by step, making plot logic and character decisions explicit rather than intuitive. For *Marathon Man*, when you ask "Why doesn’t Babe tell Szell what he knows?" the MCP breaks the situation down: Babe does not know about the diamonds; Szell assumes Doc told him; Babe’s denials sound like defiance; Szell will not believe him; and the torture continues regardless. Each step can be checked against the manuscript. When you ask "Should Babe confront Szell at the bank or wait for police?" Sequential Thinking lays out Babe’s trauma, Szell’s escape risk, Babe’s need for agency, and the thematic fit of the thriller’s payoff. The chain of reasoning supports the final choice and becomes part of your editorial record, reducing plot holes by making cause-and-effect visible.

### 3. Cognee MCP (cognee-connections)

Cognee is a graph-RAG system that finds links between concepts you did not explicitly create. For *Marathon Man*, it can surface the connection between Babe’s father’s suicide (McCarthy-era betrayal and loss of safety), Doc’s secret agency work, and Szell’s torture—themes of trust, secrecy, and betrayal. When you ask "How does 'Is it safe?' connect to the novel’s themes?" Cognee can trace Szell’s question to Babe’s confusion, to the father’s suicide (safety lost), to Doc’s secrecy, and to trust and betrayal. It makes the symbol’s meaning explicit and supports thematic coherence across the book.

### 4. Fireproof MCP

Fireproof stores JSON documents with sync and versioning. For *Marathon Man*, you would use it for character sheets, scene summaries, timeline notes, and "best of" passages—for example, Szell’s backstory, Babe’s marathon training beats, and Doc’s Division role. You can query "best tension scenes" when revising and store entries such as a JSON object for Szell with key details (former Auschwitz dentist, diamonds from prisoners, arrival after his father’s death). Later, a query like "Show me all Szell scenes" supports consistency and pacing across the manuscript.

### 5. Book Series MCP

The Book Series MCP is built for series work (characters, plot tracking, world-building, research, continuity) but applies equally to a single novel. For *Marathon Man*, you would track Babe’s arc from innocent to tortured to avenger, Szell’s movements from Paraguay to New York to the bank, and the timeline from Doc’s death through Babe’s abduction to the climax at the bank. It helps maintain character arcs, plot threads, research notes (e.g., McCarthy era, diamond smuggling), and continuity across acts.

### 6. Mem0 / OpenMemory MCP

Mem0 and OpenMemory provide persistent memory across sessions, storing facts, preferences, and prior decisions. For *Marathon Man*, the system can remember that you prefer Goldman’s lean prose, your pacing choices, and continuity decisions. After you state that "Babe’s father’s suicide should mirror Doc’s death structurally," it stores that choice; later, when editing, the assistant can remind you of it so structural parallels remain intentional.

### 7. Sequential Thinking Ultra

Sequential Thinking Ultra adds bias detection, quality metrics, and branching to stepwise reasoning. For *Marathon Man*, when you ask "Is Babe’s revenge at the bank justified?" Ultra explores multiple paths—legal (arrest Szell), moral (kill him), thematic (what the novel requires)—and scores each for consistency with Babe’s character and thriller conventions. It flags when plot choices are driven by convenience (e.g., Babe "happens" to be at the bank) and asks whether that is earned or coincidental. You receive both rigor and the ability to explore alternatives before committing.

### 8. Sequential Thinking MAS (Multi-Agent System)

Sequential Thinking MAS uses five specialized agents—Factual, Emotional, Critical, Creative, and Synthesis—to analyze plot and character decisions from several angles. For *Marathon Man*, when you ask "Should Szell die at Babe’s hands?" the Factual agent checks timeline, evidence chain, and structural requirements; the Emotional agent evaluates whether Babe needs catharsis and whether the kill would provide closure or emptiness; the Critical agent checks plot holes and thematic consistency; the Creative agent suggests alternatives (Szell escapes, Babe wounds but does not kill); and the Synthesis agent combines the views into a recommendation. Each agent can surface issues the others miss, which is especially useful for high-stakes decisions where logic, emotion, theme, and structure must align.

### 9. Enhanced Sequential Thinking (VitalyMalakanov)

Enhanced Sequential Thinking offers many thinking modes (linear, creative, evaluative, and others) so you can match reasoning style to the task. For *Marathon Man*, you might use creative mode to brainstorm alternate outcomes for the bank climax (Babe kills Szell, Szell escapes, Babe hands him to police, Szell dies accidentally), evaluative mode to check consistency (e.g., Doc’s death vs. Babe’s abduction timeline), and linear mode to verify timeline (Babe’s age, Doc’s death date, Szell’s arrival). The system can learn which modes work best for different tasks, giving you granular control over how the model thinks.

### 10. Sequential Thinking (Rust Version)

The Rust implementation of Sequential Thinking provides the same reasoning as the Reference server but with greater speed and efficiency. For *Marathon Man*, when you run analysis across all chapters—checking timeline consistency, character knowledge states, and plot logic—the Rust version can process the full manuscript in seconds rather than minutes. It returns timeline checks, character consistency, and plot-hole flags (e.g., "Chapter 12: Babe references diamonds—verify he has not learned about them yet") with identical quality to the Reference server, enabling faster feedback loops for full-manuscript or multi-chapter analysis.

### 11. Zen MCP / PAL MCP (zen-orchestrator)

Zen (or PAL) routes work across multiple models—for example, GPT-4 for dialogue, Gemini for long-manuscript analysis, and Claude for synthesis. For *Marathon Man*, you could request "tense dialogue between Babe and Szell"; Zen would route dialogue generation to a model suited for it and use another for full-manuscript pacing or coherence. You thus leverage each model’s strengths (dialogue, pacing, synthesis) within a single request.

### 12. Style Emulation MCP

The Style Emulation MCP matches your prose to a target style (e.g., William Goldman). It can analyze sentence length, rhythm, dialogue ratio, and rewrite to fit. For *Marathon Man*, you would feed samples of Goldman’s prose, create a profile, and then compare your draft to that profile. The system can return scores and rewrites with guidance such as "Shorten sentences; increase dialogue; match Goldman’s terse rhythm," so your thriller prose stays aligned with the reference style.

### 13. Firecrawl MCP

Firecrawl performs deep web scraping and converts pages to Markdown. For *Marathon Man*, you would use it to research the McCarthy era, diamond smuggling, Auschwitz dental units, Nazi refuge in Uruguay or Paraguay, and Division-style agencies. A request such as "Research McCarthy-era suicides and government pressure" would pull articles and convert them to Markdown for quick reference when writing Babe’s father’s backstory and the period atmosphere.

### 14. Brave Search MCP and DuckDuckGo MCP

Brave Search and DuckDuckGo provide fast fact-checking and research. For *Marathon Man*, you might look up "safe deposit box procedures 1970s," "Columbia campus 1974," or "diamond cutting Paraguay." DuckDuckGo is free and privacy-focused; Brave offers more control and a generous free tier. A query such as "What did a Manhattan safe deposit box cost in 1974?" returns facts that keep the bank climax grounded and believable.

### 15. Exa MCP

Exa provides semantic search for deeper research. For *Marathon Man*, queries such as "Nazi fugitives South America 1970s" or "dental torture psychological effects" return contextually relevant results. A query like "Find accounts of survivors’ experiences with Nazi doctors" can surface articles, memoirs, and studies that inform Szell’s character and the novel’s moral weight without relying on keyword matching alone.

### 16. Google Drive MCP (google-workspace)

The Google Drive (or Google Workspace) MCP gives Cursor access to your drafts, research, and notes in the cloud. For *Marathon Man*, you would keep a Drive folder with timelines, Szell’s backstory, and scene drafts. When you ask "Pull my outline for Act III from Google Drive," the MCP fetches the document and Claude can use it while drafting the bank climax, so structure and notes stay in sync with the editor.

### 17. GitHub MCP

The GitHub MCP integrates version control into the writing workflow. For *Marathon Man*, you would use a repository (e.g., `marathon-man`) with main holding the current draft and branches for alternate plotlines such as "Babe survives" or "Szell escapes." A request like "Create a branch for the alternate ending where Babe doesn’t kill Szell" lets you compare endings without losing the main draft and supports a coding-style approach to narrative branching.

### 18. Linear MCP

Linear provides project management for novel tasks. For *Marathon Man*, you would create issues such as "Revise torture scene," "Fact-check McCarthy era," and "Pacing pass Act II," and use a roadmap for milestones (Outline, Draft, First Revision, Beta). A request like "Create an issue: Revise Szell’s death scene for thematic clarity" keeps revision work trackable and visible alongside the manuscript.

### 19. Text-to-Speech (AssemblyAI, or Hume/OpenAI/Google TTS)

Text-to-Speech MCPs read drafts aloud for rhythm, dialogue, and flow. For *Marathon Man*, you would send the "Is it safe?" scene and the bank climax to TTS and listen for awkward phrasing and flat dialogue. Hearing the torture scene aloud helps you judge whether "Is it safe?" lands with the right rhythm and menace. AssemblyAI and similar services can also transcribe voice notes if you dictate ideas.

### 20. Anki MCP (anki-flashcards)

Anki MCP integrates with Anki and AnkiConnect to create flashcards for continuity. For *Marathon Man*, you would create cards such as "When did Doc die?" "Where are the diamonds?" and "What is Babe’s Ph.D. topic?" to reinforce consistency. A card like "Szell’s motivation" with the answer "Retrieve diamonds; father died; must collect himself" can be reviewed before writing Szell scenes so his goals stay sharp.

### 21. Filesystem MCP (walk-this-way, tim-cursor-experiment-files)

The Filesystem MCP gives Claude direct read and write access to a specified directory. For *Marathon Man*, you would point it at the novel folder so Claude can read chapters, character sheets, outlines, and research. When you ask "Read chapter 12 and my character sheet for Szell," the MCP returns the file contents and Claude uses them for consistency during editing or drafting.

### 22. Figma MCP

Figma MCP allows storyboards, maps, and character boards to be read and updated from Cursor. For *Marathon Man*, you could create a map of Szell’s route (Paraguay to New York to the bank), a timeline of events, or a visual outline of the climax. A request like "Generate a storyboard for the bank climax" lets Claude use your design to keep scene blocking and geography consistent with the text.

### 23. n8n MCP (workflow-automation)

The n8n MCP connects Cursor to workflow automation. For *Marathon Man*, you would automate actions such as "On save, back up to Drive" or "Every Sunday, send a progress summary." A workflow like "When I tag a scene 'revise,' create a Linear issue" ties your writing process to task tracking and reduces manual steps.

### 24. Pandoc MCP

Pandoc MCP converts Markdown drafts to DOCX, PDF, and EPUB. For *Marathon Man*, you would export to DOCX for beta readers or editors and to PDF for submission. A request like "Convert my manuscript to DOCX for my editor" produces a formatted document without leaving Cursor, keeping the pipeline from draft to submission in one environment.

### 25. Multi-Agent Debate MCP

Multi-Agent Debate runs several models in a "debate" over a choice (e.g., a plot twist or character decision). For *Marathon Man*, you would run "Should Babe kill Szell?" and receive arguments from different models—one emphasizing catharsis, another legal or moral nuance, another sequel potential. You then choose or synthesize the best reasoning, which helps avoid single-model bias and surfaces alternatives you might not have considered.

### 26. Pattern Finder MCP

A Pattern Finder (or custom script) detects repetition, overused words, and structural patterns. For *Marathon Man*, you would scan for the frequency of "Is it safe?," overused verbs, or similar scene openings. A query like "Find all instances of 'safe' and 'safety'" returns locations so you can decide where to trim or amplify for effect.

### 27. Vectara MCP

Vectara provides semantic search across the manuscript. For *Marathon Man*, queries such as "scenes where Babe feels betrayed" or "passages about his father" find relevant text even without exact phrases. A query like "Find all scenes involving trust or betrayal" returns thematic matches that support revision and thematic consistency across the book.

### 28. Compass Writing Guides MCP

The Compass Writing Guides MCP is part of the Compass Writing System and exposes tools that align with your story bible, prose DNA, and creative collaborator role. For *Marathon Man*, it would provide guidance consistent with your Compass setup—whether that is Goldman-style thriller conventions, structural beats, or genre-specific advice—so that MCP-driven suggestions stay aligned with your chosen "north" for the project.

### 29. Cursor Workflow Orchestrator MCP

The Cursor Workflow Orchestrator MCP helps coordinate workflows across Cursor and MCPs. For *Marathon Man*, it can sequence steps such as "First query Memory for character states, then run Sequential Thinking on the bank decision, then apply Style Emulation to the scene." It acts as a meta-layer that ensures the right tools are invoked in the right order for complex, multi-step tasks.

### 30. Fiction Reverse Engineering MCP

The Fiction Reverse Engineering MCP supports breaking down published fiction (or your own drafts) into structure, beats, and technique. For *Marathon Man*, you could reverse-engineer Goldman’s pacing, scene construction, or use of "Is it safe?" to inform your own thriller. It helps you learn from the reference novel and apply those patterns consciously.

### 31. Professional Editor MCP

The Professional Editor MCP provides editorial-style feedback (structure, pacing, clarity, continuity). For *Marathon Man*, you would send scenes or acts and receive notes similar to a developmental or line edit—flagging weak transitions, unclear character motivation, or pacing issues—so you can revise with an editor’s eye even before sending to a human editor.

### 32. Dennis Lehane Style MCP

The Dennis Lehane Style MCP (or similar author-style MCPs) encodes a specific author’s voice and conventions. For *Marathon Man*, if you are aiming for a Goldman-like thriller, a Lehane-style tool can still offer complementary techniques (e.g., Boston-noir pacing or moral ambiguity) that you can adopt or adapt. It expands the palette of style references available inside the ecosystem.

### 33. Memorygraph, Enhanced MCP Memory, Supermemory, Scanadi MCP AI Memory

These MCPs offer alternative or extended memory and persistence. For *Marathon Man*, they can store character states, timeline facts, and prior decisions in different backends (graph, enhanced store, or database). Using one or more alongside the official Knowledge Graph gives you redundancy or specialized queries (e.g., long-term author preferences vs. project-specific story truth), so that both session-to-session memory and novel-specific canon remain available.

### 34. Ultrarag and Ragenta MCPs

Ultrarag and Ragenta provide RAG (retrieval-augmented generation) over your documents. For *Marathon Man*, you would index chapters, outlines, and research so that when you ask "What did we establish about Szell’s father in the manuscript?" the system retrieves the relevant passages and grounds the model’s answer in your text. This reduces hallucination and keeps suggestions tied to what you have actually written.

### 35. Scalemcp

Scalemcp can help scale or manage MCP usage (e.g., rate limits, batching, or cost). For *Marathon Man*, when you run many MCP calls in one session (Memory, Sequential Thinking, Firecrawl, Style Emulation), Scalemcp can help ensure requests are handled efficiently and within your constraints, so the ecosystem remains usable for long manuscripts and heavy workflows.

### 36. AI Writers Workshop MCP

The AI Writers Workshop MCP is tailored to collaborative or workshop-style writing. For *Marathon Man*, it can support exercises such as alternate openings, character interviews, or scene rewrites from another POV, feeding into the same story truth (e.g., via Memory) so experimentation stays consistent with your canon.

### 37. Open Library MCP

The Open Library MCP provides access to book metadata and sometimes full text. For *Marathon Man*, you could look up Goldman’s other works, publication history, or period references (1970s thrillers) to inform research and style, and to ensure your novel sits in the right tradition.

### 38. Perplexity MCP

Perplexity MCP adds web-augmented search with synthesized answers. For *Marathon Man*, you could ask "What was the cultural impact of Marathon Man the film?" or "How did critics describe Goldman’s prose?" and receive summarized, cited answers that inform your understanding of the source material and the market.

### 39. Context7 MCP

Context7 provides context management (e.g., windowing or summarization of long conversations). For *Marathon Man*, when your chat history grows long, Context7 can help keep the most relevant exchanges and decisions in scope so that the model does not "forget" earlier continuity or style choices.

### 40. Supabase MCP

Supabase MCP connects Cursor to a Supabase backend. For *Marathon Man*, you could store outlines, character tables, or research in Supabase and query them via the MCP, giving you a structured database that persists across machines and can be shared or extended (e.g., with a simple web dashboard).

### 41. Puppeteer MCP and Fetch MCP

Puppeteer and Fetch MCPs enable browser automation and HTTP requests. For *Marathon Man*, you could use them to scrape period-specific sites (e.g., 1970s New York), fetch images or maps for the bank location, or automate fact-checking against online sources. The Cursor native browser tool, where available, can complement this by letting you or the agent view pages in context; one approach is to use the browser for visual verification and Puppeteer/Fetch for programmatic capture when building research dossiers.

### 42. Getgather, Ebook MCP, Google Books MCP

Getgather, Ebook MCP, and Google Books MCP provide access to books and ebooks. For *Marathon Man*, you could pull quotes from Goldman’s novel or from comparable thrillers for style reference, or load public-domain research (e.g., historical accounts) into context for period accuracy.

### 43. AI Context MCP and Saner AI MCP

AI Context and Saner AI MCPs can augment how context is selected, summarized, or validated. For *Marathon Man*, they help ensure that the right chunks of your manuscript, outline, and rules are included in each request, so that long-form editing remains coherent and the model stays "sane" with respect to your stated goals and story truth.

### 44. Writer MCP

The Writer MCP (when configured with a database and optional APIs) can provide writer-specific workflows—word counts, goals, or integration with writing platforms. For *Marathon Man*, you would use it to track progress (e.g., words per chapter), set milestones, and keep the drafting process measurable alongside the MCP-driven quality and continuity checks.

### 45. YepCode MCP

YepCode can generate and run code in response to requests. For *Marathon Man*, you could ask for a script that extracts every line of dialogue from your manuscript or that builds a timeline from chapter frontmatter. The generated code runs in a sandbox and can be exposed as a repeatable tool, extending the ecosystem without you writing the code yourself.

### 46. Toolbox MCP

The Toolbox MCP bundles many utilities (e.g., file operations, conversions, or small automations). For *Marathon Man*, you would use it for ad hoc tasks such as merging chapter files, converting formats, or running one-off checks that do not require a dedicated MCP, keeping the workflow flexible.

### 47. Slack MCP (and similar collaboration MCPs)

The Slack MCP connects Cursor to Slack. For *Marathon Man*, you could post progress updates, share snippets with beta readers or an editor, or trigger notifications when a Linear issue is closed or when a draft milestone is reached, so the novel project stays visible to your team or accountability partner.

---

The list above covers the MCPs from the original curated guide plus those present in your Compass and Cursor configuration. Any MCP not yet installed (e.g., Fireproof, a dedicated Pattern Finder, or Sequential Thinking Rust) can be added using the same pattern: define its fiction use in terms of story truth, plot logic, research, style, or export, and wire it into the Compass Writing System and sub-agent workflows described below.

---

## Part II: How MCPs Work Together and Who Orchestrates Them

MCPs do not talk to each other directly. They are tools exposed by servers, and the only orchestrator is the model (Claude, in Cursor) that receives your prompt and decides which MCPs to call and in what order. Results from one MCP can be passed by the model into the next tool call or into its own reasoning, so that multi-step workflows are coordinated through the agent, not through peer-to-peer MCP communication.

For a request such as "Rewrite the torture scene in Goldman’s style and ensure continuity," the flow works as follows. Claude receives your request and may first call the Knowledge Graph Memory MCP to retrieve Babe’s state, Szell’s motivations, and the torture timeline. The Memory MCP returns that Babe does not know about the diamonds, that Szell suspects Doc told him, and that the timeline runs from Doc’s death to Babe’s abduction. Claude then uses that context and may call the Style Emulation MCP with the scene text and a Goldman profile; Style Emulation returns a rewritten passage. Claude may next call the Sequential Thinking MCP to validate whether Babe’s confusion in the scene is consistent with the Knowledge Graph data. Sequential Thinking confirms the logic. Claude then synthesizes and returns the final scene to you. You issue one request; several MCPs collaborate in the background under Claude’s coordination.

For a high-stakes question such as "Should Babe kill Szell at the bank?" the orchestration might run as follows. Claude calls the Knowledge Graph to get Babe’s arc, Szell’s crimes, and Doc’s death. It then calls the Sequential Thinking MCP to lay out the logical implications of kill versus arrest versus escape. Optionally, it calls the Multi-Agent Debate MCP so that multiple models argue each option. Finally, Claude synthesizes and presents the options with reasoning. The Sequential Thinking brothers (Reference, Ultra, MAS, Enhanced, Rust) can be invoked in sequence or in parallel depending on how you phrase the prompt: Reference for stepwise logic, Ultra for bias and quality scores, MAS for multi-angle analysis, Enhanced for mode-specific reasoning (e.g., creative vs. evaluative), and Rust for fast full-manuscript consistency checks. In every case, it is Claude that decides when and how to use each MCP; the MCPs themselves do not initiate calls to one another.

---

## Part III: Sub-Agents, Cloud Agents, and the Secret Sauce of the Creative Writing Ecosystem

Sub-agents are the specialism layer that makes this creative writing ecosystem repeatable and "groundbreaking" in practice. They are specialized AI assistants that run in isolated contexts with their own system prompts, defined in `.cursor/agents/*.md` (project) or `~/.cursor/agents/*.md` (user-wide). When the main Cursor agent decides that a task fits a sub-agent’s description, it can delegate to that sub-agent. The sub-agent then runs with its own instructions (the markdown body), so you get focused behavior—always using Memory, Sequential Thinking, Mermaid, research MCPs, and your prose and continuity rules—without polluting the main chat or re-explaining the workflow every time.

Who calls the sub-agents? The main Cursor agent (Claude) does. You do not call them by name in every prompt unless you want to; you describe the task (e.g., "Revise Chapter 3 for continuity and Goldman-style prose"), and the main agent, using the sub-agent’s `description` in its YAML frontmatter, decides that this is a fiction task and delegates to the fiction-writer sub-agent. That sub-agent then runs with instructions that tell it to query Memory first, use Sequential Thinking for plot logic, apply prose-style and continuity rules when editing `chapters/*.md`, and use Mermaid for structure when needed. So the "who" is: the main agent, guided by the sub-agent’s description and your prompt. The "how" is: the sub-agent’s markdown body lists which MCPs to use and when, and references your `.cursor/rules`, so that every time you delegate to that specialist, the same MCPs and rules are applied consistently.

Cloud agents run in the cloud (e.g., cursor.com/agents) so that work can continue when your laptop is disconnected. For *Marathon Man*, you could send a cloud agent a task such as "Run a continuity check on chapters 1–5" or "Research 1974 Manhattan safe deposit box procedures" and receive results later. Cloud agents are less central than sub-agents for the core "writing in Cursor" loop but are powerful for offload and async work. Agent swarming (multiple agents in parallel, e.g., on worktrees) can split a big task: one agent on outline, another on research, another on continuity audit, and then you or the main agent merge the results. Sub-agents define *who* does the work (the fiction specialist); cloud agents define *where* (local vs. cloud); swarming defines *how many* (parallel streams). You can combine them: for example, delegate to the fiction-writer sub-agent and run that as a cloud agent, or run several sub-agents in parallel for outline, research, and continuity in one go.

Bringing this into the Compass Writing System means that the "haunting" ecosystem—the sense that the system "knows" your story bible, your prose DNA, and your creative collaborator role—is implemented partly through sub-agents. A fiction-writer sub-agent that always pulls from Memory, always runs Sequential Thinking for big decisions, and always applies Compass-aligned rules (and Compass Writing Guides MCP when available) ensures that every fiction task is executed with the same north. The Cursor Workflow Orchestrator MCP can then sequence steps at a higher level (e.g., "First Compass context, then Memory, then Sequential Thinking, then Style Emulation"), so that sub-agents and MCPs together form a single, repeatable creative-writing pipeline. The "secret sauce" is not one tool but the consistent application of the full stack through specialized sub-agents that the main agent invokes when it recognizes a fiction-writing or editing task.

---

## Part IV: How MCPs Can Create Their Own MCPs

Some MCPs (e.g., YepCode) can generate and run code. In theory, an MCP could create or wrap a new capability that behaves like a tool. For example, you might ask YepCode for "a tool that analyzes emotional arcs in my manuscript." The MCP could generate Python that scores fear, rage, grief, and agency per chapter and then expose that as a callable function or a small server. For *Marathon Man*, you could ask for "a tool that tracks Babe’s emotional state across chapters"; the generated code would run in a sandbox and the system would gain a new capability without you writing it by hand. Full "MCP creates MCP" (a new server registered with the host) is still emergent, but the pattern—MCP executes code, code implements a capability, capability is used like a tool—is already available and can extend the creative writing ecosystem with custom analyses tailored to your novel.

---

## Part V: API and Registration Summary

| MCP | API/Registration | Cost | How to Obtain |
|-----|------------------|------|---------------|
| Knowledge Graph Memory | No | Free | npx -y @modelcontextprotocol/server-memory |
| Sequential Thinking | No | Free | npx -y @modelcontextprotocol/server-sequential-thinking |
| Sequential Thinking Ultra | No | Free | npx -y @sequential-thinking/ultra |
| Sequential Thinking MAS | No | Free | npx -y @fradser/mcp-server-mas-sequential-thinking |
| Enhanced Sequential Thinking | No | Free | npx -y @vitalymalakanov/mcp-enhanced-sequential-thinking |
| Cognee | Self-host: No; Hosted: Possibly | Free (self) | Python -m cognee_mcp; COGNEE_DATA_PATH |
| Fireproof | No | Free | npm install @fireproof-storage/mcp-database-server |
| Book Series | PostgreSQL | Free (self-host DB) | Python -m book_series_mcp; POSTGRES_URI |
| Mem0 / OpenMemory | Hosted: Yes; Local: No | Free tier | npx -y @openmemory/mcp-server; OPENMEMORY_API_KEY |
| Zen / PAL | OpenAI, Google, Anthropic | ~$30–100+/mo | Node script; API keys from each provider |
| Style Emulation | Anthropic | Pay-per-token | Python server; ANTHROPIC_API_KEY |
| Firecrawl | Firecrawl API key | ~$20/mo | npx -y firecrawl-mcp; FIRECRAWL_API_KEY |
| Brave Search | Brave API key | 2K free/mo | npx -y @brave/brave-search-mcp-server |
| DuckDuckGo | No | Free | npx -y @modelcontextprotocol/server-duckduckgo-search |
| Exa | Exa account | Varies | npx -y exa-mcp-server; EXA_API_KEY |
| Google Drive / Workspace | Google OAuth | Free | uvx workspace-mcp; GOOGLE_OAUTH_* |
| GitHub | GitHub token | Free | npx -y @modelcontextprotocol/server-github; GITHUB_TOKEN |
| Linear | Linear API | Free tier | npx -y mcp-remote https://mcp.linear.app/mcp |
| Text-to-Speech / AssemblyAI | API key | Pay-per-use | npx -y assembly-ai-mcp; ASSEMBLYAI_API_KEY |
| Anki | Anki + AnkiConnect | Free | npx -y @anki/mcp-server |
| Filesystem | No | Free | npx -y @modelcontextprotocol/server-filesystem /path |
| Figma | Figma token | Free tier | npx -y figma-developer-mcp; FIGMA_ACCESS_TOKEN |
| n8n | n8n instance | Free (self) | npx -y @n8n/mcp-server; N8N_API_KEY |
| Pandoc | No | Free | uvx mcp-pandoc or brew install pandoc |
| Vectara | Vectara API key | Free tier | npx -y vectara-mcp; VECTARA_* |
| Compass Writing Guides | No (local Python) | Free | Python server in COMPASS repo |
| Cursor Workflow Orchestrator | No (local Python) | Free | Python server in COMPASS repo |
| Fiction Reverse Engineering | No (local Python) | Free | Python server in COMPASS repo |
| Professional Editor | No (local Python) | Free | Python server in COMPASS repo |
| Perplexity | Perplexity API key | Varies | npx -y @jschuller/perplexity-mcp |
| Puppeteer | No | Free | npx -y @modelcontextprotocol/server-puppeteer |
| Supabase | Supabase token | Free tier | npx -y @supabase/mcp-server-supabase; SUPABASE_ACCESS_TOKEN |
| Writer MCP | PostgreSQL, optional OpenAI | Varies | Python -m writer_mcp; POSTGRES_URI, OPENAI_API_KEY |
| YepCode | YepCode API key | Varies | npx -y yepcode-mcp@latest |

(Additional MCPs from your config follow the same pattern: check each server’s docs for required env vars and add them to your environment or Cursor MCP settings.)

---

## Part VI: Cursor–Claude Fiction Writing Ecosystem (Compass and Haunting Ecosystem)

The core idea is to use Cursor as the main editor, Claude as the orchestrator, MCPs as tools, sub-agents as specialists, and `.cursor/rules/` plus Skills as the glue. The "haunting" ecosystem is the feeling that the system consistently knows your story bible, prose DNA, and creative collaborator role; that is achieved by loading that context (e.g., via sessionStart hooks or Compass Writing Guides MCP) and by routing fiction tasks through a sub-agent that always applies the same rules and MCPs.

Ecosystem Example A (Minimal) uses Knowledge Graph Memory, Sequential Thinking (Reference), and Filesystem, with rules for prose-style and continuity. The project layout is a single novel folder (e.g., `marathon-man-novel/`) with `.cursor/rules/` (prose-style.mdc, continuity.mdc), `chapters/`, `characters/`, `research/`, and `outline.md`. The prose-style rule encodes Goldman-style thriller prose (short punchy sentences in tension, lean dialogue, repetition for dread, concrete sensory detail). The continuity rule requires querying Memory for character states and verifying timeline (Doc’s death, Babe’s abduction, bank) and Babe’s knowledge (he does not know about the diamonds) before editing. One sub-agent, the fiction-writer, is enough to ensure that every fiction task uses Memory, Sequential Thinking, and these rules.

Ecosystem Example B (Power) adds Cognee, Fireproof, Firecrawl, Zen, Style Emulation, GitHub, Linear, Text-to-Speech, and the full set of Sequential Thinking brothers, plus Skills (fiction-drafting, continuity-audit, fiction-revision) and optional Hooks. The fiction-drafting skill tells the agent to pull context from Memory, research with Firecrawl when needed, draft with prose-style, validate with Sequential Thinking, and store new facts in Memory. The continuity-audit skill tells it to query Memory, use Cognee for potential inconsistencies, use Vectara for thematic alignment, flag scenes that need revision, and produce a report. The fiction-revision skill tells it when to use Style Emulation, Pattern Finder, and TTS. The Compass Writing Guides MCP and Cursor Workflow Orchestrator MCP can sit on top of this to align workflows with your Compass north and to sequence steps across MCPs and sub-agents. Recommendation: start with Example A and add MCPs and Skills as your workflow grows; Example B becomes natural once you are comfortable with the core stack and want full research-to-export and editing pipelines.

---

## Part VII: Cursor Tools in Depth — Coordination with MCPs and Sub-Agents

Cursor provides Rules, Skills, Commands, Prompts, Snippets, Hooks, and (where applicable) Bugbots and browser-related features. Each can be coordinated with MCPs and sub-agents so that the creative writing ecosystem behaves consistently for both editing and authentic personal writing.

**Cursor Rules** are stored in `.cursor/rules/` as `.mdc` files with optional frontmatter (description, globs, alwaysApply). They inject instructions into the context when the agent works on matching files. For *Marathon Man*, the prose-style rule applies to `chapters/*.md` and states that prose should follow Goldman-style thriller conventions: short punchy sentences during tension, lean dialogue, repetition for dread (e.g., "Is it safe?"), and concrete sensory detail over abstraction. The continuity rule applies to the same glob and requires that before editing a chapter, the agent query Memory for character states, verify timeline consistency, and check what each character knows at this point. Rules do not call MCPs by themselves; they instruct the agent (or the fiction-writer sub-agent when delegated) to use Memory and to verify timeline and knowledge. Thus Rules and MCPs work together: the Rule says "query Memory"; the agent then invokes the Memory MCP and applies the returned facts. No Rule is excluded from this report; you can add research-mode.mdc, dialogue.mdc, or theme.mdc as needed, each scoped to appropriate globs.

**Cursor Skills** live in `.cursor/skills/<skill-name>/SKILL.md` (project) or `~/.cursor/skills/` (user). They teach the agent when and how to perform tasks, including which MCPs to use and in what order. The fiction-drafting skill might state: when drafting a new scene or chapter, first query the Knowledge Graph for character states and timeline; if research is needed, use Firecrawl or DuckDuckGo; draft the scene applying prose-style rules; validate plot logic with Sequential Thinking; then update the Knowledge Graph with new facts. The continuity-audit skill might state: when auditing the manuscript, query Memory for all character states, use Cognee to find potential inconsistencies, use Vectara for thematic alignment, flag scenes that need revision, and generate a report with specific fixes. The fiction-revision skill might state: when revising, use Style Emulation for voice, Pattern Finder (or equivalent) for overused words, and Text-to-Speech for rhythm and dialogue. Skills are discovered by the agent via their descriptions; when you say "Run a continuity audit," the agent can select the continuity-audit skill and then call the appropriate MCPs in sequence. Sub-agents can reference the same Skills so that when the main agent delegates to the fiction-writer sub-agent, that sub-agent follows the same Skills. Coordination is therefore: you or the main agent choose the task; the Skill defines the workflow; the agent (or sub-agent) executes it using MCPs and Rules.

**Cursor Commands** are custom slash commands (e.g., /rewrite, /continuity-check, /word-report) that you can define to trigger specific behaviors. For *Marathon Man*, a command like /continuity-check could be configured to invoke the fiction-writer sub-agent (or the main agent with the continuity-audit skill) and to pass a prompt such as "Run a full continuity audit on the current chapter using Memory and Sequential Thinking." Commands thus act as shortcuts that bundle a task and optional sub-agent or skill, so that MCPs are called in a repeatable way without you retyping the full prompt.

**Cursor Prompts** (saved or custom prompts) can encode multi-step requests. For example, a saved prompt might be: "Using the fiction-writer sub-agent: (1) Query Memory for Babe and Szell’s states at this point in the story. (2) Use Sequential Thinking to verify that the following decision is consistent: [paste decision]. (3) Apply prose-style and continuity rules to the following passage: [paste passage]. (4) Return the revised passage and a short continuity note." Such a prompt ensures that Memory, Sequential Thinking, and Rules are all used in one go and can be reused for every major scene or decision.

**Cursor Snippets** are reusable text fragments. For *Marathon Man*, you might keep snippets for common instructions such as "Query Memory for character states before editing" or "Use Sequential Thinking to validate this plot choice." When you insert a snippet into the chat, the agent receives the instruction and can then call the relevant MCPs. Snippets do not replace Skills or Rules but offer quick, manual injection of workflow steps.

**Cursor Hooks** are lifecycle hooks (e.g., sessionStart, afterFileEdit, beforeSubmitPrompt, stop) defined in `.cursor/hooks.json`. They run scripts at specific moments in the agent loop. For *Marathon Man*, sessionStart can run a script that loads your story bible, prose DNA, and creative collaborator role into the session (e.g., outputting JSON with `additional_context`), so that every session begins with the same "haunting" context. afterFileEdit can run a script (e.g., lint_prose.py) on edited files matching `chapters/*.md` to flag overused words or POV drift. beforeSubmitPrompt can validate that the user’s prompt contains required tags (e.g., `<chapter>`, `<goal>`) before submission. The stop hook can run a word-report script to produce session metrics. Hooks do not call MCPs directly; they run local scripts that can read/write files or output context. The agent then sees the hook output (e.g., lint results or additional_context) and can act on it, including calling MCPs (e.g., Memory or Sequential Thinking) to interpret or follow up. So Hooks and MCPs coordinate as follows: Hooks prepare or validate the environment; the agent uses MCPs to reason and to read or update story truth.

**Bugbots** in Cursor are focused on code (e.g., finding and fixing bugs). For prose, the equivalent is to use external linters (e.g., Vale, LanguageTool, or Grammarly) or a Pattern Finder–style MCP, and optionally to trigger them via an afterFileEdit hook (e.g., run a script that calls LanguageTool on the edited chapter). So "Bugbot" in the creative writing context is conceptual: the role (automated quality check) is filled by hooks plus linters or MCPs rather than by the built-in code Bugbot.

**Cursor native browser tool** (when available) allows the agent or you to open and view web pages inside the environment. For *Marathon Man*, you could use it to verify research (e.g., open a page on 1974 Manhattan or Columbia campus) or to compare your prose rhythm to a sample of Goldman’s work if it is available online. The browser complements Firecrawl, DuckDuckGo, and Exa: those MCPs fetch and convert content programmatically; the browser lets you or the agent visually confirm a source or layout. An idea for integration: add a Cursor Rule or Skill that says "When the user asks to verify a fact or to compare style to a URL, use the browser tool to open the URL and summarize or compare." That way, research and style checks can combine MCP-based retrieval with live browsing when needed.

**Summary of coordination:** Rules and Skills guide the agent (and sub-agents) on when to use which MCPs; Commands and Prompts bundle multi-step workflows; Snippets provide quick instructions; Hooks prepare context and run lint/analytics; the browser supports verification and comparison. None of these replace MCPs; they ensure MCPs are invoked consistently and in the right order for the Compass Writing System and for *Marathon Man* as the teaching example.

---

## Part VIII: Orchestration and the Compass Writing System

The Compass Writing System provides a "north" for your novel: story bible, prose DNA, creative collaborator role, and (where implemented) XML tags, refactoring/debugging/testing/linting/compiling metaphors, and structured YAML (outlines, character frontmatter). Orchestration is the way Claude (in Cursor) uses that north plus MCPs, sub-agents, Rules, Skills, and Hooks to execute every task in alignment with that north.

For a single novel like *Marathon Man*, orchestration works as follows. You express a goal in natural language (e.g., "Revise the bank climax for continuity and Goldman’s style"). The main agent may recognize this as a fiction task and delegate to the fiction-writer sub-agent. The sub-agent’s instructions tell it to load context (from sessionStart hook or Compass Writing Guides MCP if available), query Memory for Babe’s and Szell’s states and the timeline, use Sequential Thinking to validate the logic of the climax, apply prose-style and continuity rules, and optionally use Style Emulation to match Goldman. The Cursor Workflow Orchestrator MCP (if installed) can encode a sequence such as "Compass context → Memory → Sequential Thinking → draft/edit → Style Emulation → store in Memory," so that even if the sub-agent’s prompt is brief, the orchestrator enforces the full pipeline. The result is a revised scene that is consistent with story truth, plot logic, and style, and that updates the Knowledge Graph so that the next task starts from an up-to-date canon.

The "haunting" quality comes from the fact that every fiction task, whether executed by the main agent or by a sub-agent, has access to the same story bible and prose DNA (via hooks or Compass MCP) and the same Memory and Rules. So the system appears to "remember" your novel’s world and your stylistic choices without you restating them each time. Bringing the haunting ecosystem and the Compass into this report means treating them as first-class: document the Compass Writing Guides MCP, the Cursor Workflow Orchestrator MCP, and any author-style or editor MCPs (e.g., Professional Editor, Fiction Reverse Engineering) as part of the same orchestration layer, and ensure that sub-agents and Skills reference them where appropriate so that no tool is left out of the creative writing ecosystem.

---

## Part IX: Similar Tools (Notion/Obsidian Alternatives)

If you avoid Notion and Obsidian, the same functions can be achieved with MCPs and Cursor. Local Markdown plus the Filesystem MCP lets you store outlines, character sheets, and notes as files and have Claude read and write them. Google Drive plus the Google Workspace MCP gives you cloud structure and backups with access from Cursor. The Book Series MCP with PostgreSQL provides structured character, plot, and research storage. The Fireproof MCP stores JSON documents for continuity and "best of" passages with sync. The Knowledge Graph Memory MCP (and optionally Memorygraph, Enhanced MCP Memory, or Supermemory) provides graph-like querying without a separate Notion or Obsidian database. For *Marathon Man*, you can keep a single source of truth in Memory, back it up or mirror it in Fireproof or Supabase if desired, and keep long-form notes in Markdown in the project folder, all accessible through the Filesystem MCP and the fiction-writer sub-agent.

---

## Part X: Suggested .cursor/ Setup

**Directory layout:** Under the novel project root (e.g., `marathon-man-novel/`), use `.cursor/rules/` for prose-style.mdc, continuity.mdc, and any research-mode or theme rules; `.cursor/skills/` for fiction-drafting, continuity-audit, and fiction-revision (each with a SKILL.md); `.cursor/agents/` for the fiction-writer sub-agent (fiction-writer.md); and optionally `.cursor/hooks/` for scripts invoked by hooks.json. Place `mcp.json` in `.cursor/config/` or use Cursor Settings > MCP to point at the same servers.

**MCP configuration:** Include every MCP you intend to use (Memory, Sequential Thinking and its variants, Cognee, Fireproof, Firecrawl, DuckDuckGo, Exa, Filesystem, Style Emulation, Zen, GitHub, Linear, Pandoc, Vectara, Compass Writing Guides, Cursor Workflow Orchestrator, Fiction Reverse Engineering, Professional Editor, and so on). Use full paths for local Python servers and `env:VAR_NAME` for API keys so that secrets stay out of the repo. The Fiction_Writing_MCP_Guide_Curated and your existing `.cursor/config/mcp.json` provide the pattern; extend the list to all MCPs from Part I and Part V without excluding any that are relevant to one-novel fiction writing.

**Skills usage:** Store Skills in `.cursor/skills/<skill-name>/SKILL.md` with clear names and descriptions so the agent can discover and apply them. For fiction, the three core Skills are fiction-drafting (when to pull context, research, draft, validate, update memory), continuity-audit (when and how to run continuity checks with Memory, Cognee, Vectara), and fiction-revision (when to use Style Emulation, Pattern Finder, TTS). Reference these in the fiction-writer sub-agent’s body so that when the main agent delegates, the sub-agent follows the same Skills and thus the same MCP and Rule coordination.

---

## Summary: Top MCPs and Cursor Tools for One Novel

For a single novel like *Marathon Man*, the highest-leverage components are the following. Knowledge Graph Memory is the single source of truth for characters, timeline, and plot. Sequential Thinking (Reference) is the workhorse for plot logic and character decisions; the other Sequential Thinking brothers (Ultra, MAS, Enhanced, Rust) add bias checks, multi-angle analysis, mode-specific reasoning, and speed at scale. Cognee surfaces thematic and hidden connections. Fireproof and Book Series (or equivalent) store drafts, notes, and structured metadata. The Filesystem MCP gives Claude direct access to chapters and character sheets. The fiction-writer sub-agent ensures that every fiction task uses Memory, Sequential Thinking, and Rules consistently. Cursor Rules (prose-style, continuity) and Skills (fiction-drafting, continuity-audit, fiction-revision) coordinate when and how MCPs are called. Hooks (sessionStart, afterFileEdit, stop) load context and run lint or word-report scripts. Style Emulation, Firecrawl, DuckDuckGo, Exa, and Perplexity support style matching and research. GitHub, Linear, Pandoc, and Vectara support versioning, task tracking, export, and semantic search. The Compass Writing Guides MCP and Cursor Workflow Orchestrator MCP align the pipeline with your Compass north and sequence steps across MCPs and sub-agents. Start with Memory, Sequential Thinking, Filesystem, Rules, and one sub-agent; add the rest as your process and ambition grow, so that the ecosystem remains both effective and manageable for one novel.

---

## Appendix A: Sequential Thinking MCP Variants (Five Versions)

The Sequential Thinking ecosystem includes five variants. Use them according to need:

**Sequential Thinking (Reference)** provides standard stepwise reasoning. Install with `npx -y @modelcontextprotocol/server-sequential-thinking`. Use it for day-to-day plot logic and character decisions (e.g., "Should Babe confront Szell at the bank?").

**Sequential Thinking Ultra** adds bias detection, quality metrics, and branching. Install with `npx -y @sequential-thinking/ultra` if available. Use it when you want to explore multiple plot paths and score them for thematic fit and to avoid convenience-driven choices.

**Sequential Thinking MAS (Multi-Agent System)** uses five agents—Factual, Emotional, Critical, Creative, Synthesis—for multi-angle analysis. Install with `npx -y @fradser/mcp-server-mas-sequential-thinking` if available. Use it for high-stakes decisions (e.g., "Should Szell die at Babe’s hands?") where logic, emotion, theme, and structure must align.

**Enhanced Sequential Thinking (VitalyMalakanov)** adds many thinking modes (linear, creative, evaluative, etc.). Install with `npx -y @vitalymalakanov/mcp-enhanced-sequential-thinking` if available. Use it when you want to match reasoning style to the task (creative for brainstorming, evaluative for consistency, linear for timeline checks).

**Sequential Thinking (Rust)** is the same reasoning as Reference but implemented in Rust for speed. Install via Cargo/Rust if available. Use it for full-manuscript analysis, multi-chapter consistency checks, or when you need the same rigor with lower latency.

Recommendation: Use Reference for daily plot logic; add Ultra for bias and quality, MAS for multi-angle analysis, Enhanced for mode-specific reasoning, and Rust for full-manuscript speed. Toggle by task to manage context and performance.

---

## Appendix B: Using Sequential Thinking for Analysis

When the Sequential Thinking MCP (or any of its variants) is installed and configured in Cursor Settings > MCP, you can ask Claude to use it explicitly. For example: "Use Sequential Thinking to analyze whether [your plot decision] is logically consistent with Babe’s knowledge and the timeline," or "Use Sequential Thinking to break down the consequences of [character choice]." Sequential Thinking will force stepwise reasoning before the model responds, making assumptions and implications explicit. For *Marathon Man*, apply this to decisions such as whether Babe should kill Szell, why Babe cannot tell Szell what he knows, and how the bank climax pays off the themes of trust and betrayal. The chain of reasoning becomes part of your editorial record and reduces plot holes.

---

## Appendix C: Rank-Ordered Master List — MCPs, Cursor Tools, and Recommended Commands/Prompts for the Creative Writing Ecosystem

The following list ranks MCPs, Cursor tools, and recommended custom commands or prompts from most important to least important for the creative writing ecosystem, considering both **editing** (continuity, style, structure, consistency) and **authentic personal writing** (voice, flow, discovery, drafting). Items are ordered so that the top entries have the highest impact on story truth, repeatability, and the "secret sauce" of sub-agents and orchestration; later entries add incremental value or specialized use cases.

### Tier 1 — Foundational (Story Truth, Logic, and Consistency)

1. **Knowledge Graph Memory MCP** — Single source of truth for characters, relationships, timeline, and plot. Essential for both editing (continuity checks) and authentic writing (knowing what each character knows at every point).
2. **Fiction-writer sub-agent** — The specialist that always uses Memory, Sequential Thinking, and Rules. Highest impact for repeatable, consistent fiction workflow.
3. **Cursor Rules (prose-style.mdc, continuity.mdc)** — Define voice and consistency without calling MCPs themselves; the agent (or sub-agent) uses them with Memory and Sequential Thinking. Free and immediate.
4. **Sequential Thinking MCP (Reference)** — Stepwise reasoning for plot logic and character decisions. Reduces plot holes and makes cause-and-effect explicit for both editing and drafting.
5. **Filesystem MCP (walk-this-way or project-scoped)** — Direct read/write access to chapters, character sheets, and outlines. Required for the agent to apply edits and to load context.
6. **Cursor Skills (fiction-drafting, continuity-audit, fiction-revision)** — Teach the agent when and how to use MCPs and Rules. They orchestrate the workflow without scripting.
7. **Sequential Thinking MAS (Multi-Agent System)** — Multi-angle analysis (Factual, Emotional, Critical, Creative, Synthesis) for high-stakes decisions. The "sub-agents within an MCP" that elevate reasoning quality.
8. **Sequential Thinking Ultra** — Bias detection and quality metrics for plot choices. Ensures decisions are earned, not convenient.
9. **Cognee MCP** — Thematic and hidden connections (e.g., "Is it safe?" and trust/betrayal). Supports both editing (thematic consistency) and authentic writing (discovering echoes).
10. **Compass Writing Guides MCP** — Aligns suggestions with your story bible and prose DNA. Core to the Compass Writing System and the "haunting" ecosystem.

### Tier 2 — Research, Style, and Structure

11. **Firecrawl MCP** — Deep research (McCarthy era, period details, locations). Supports authentic world-building and editing for accuracy.
12. **Style Emulation MCP** — Matches prose to a target style (e.g., Goldman). Critical for editing and for maintaining voice across sessions.
13. **DuckDuckGo Search MCP** — Fast, free fact-checking. Complements Firecrawl for quick lookups.
14. **Cursor Workflow Orchestrator MCP** — Sequences steps across MCPs and sub-agents. Ensures the right tools run in the right order.
15. **Enhanced Sequential Thinking** — Mode-specific reasoning (creative, evaluative, linear). Supports brainstorming and consistency checks.
16. **Fireproof MCP** — JSON storage for character sheets, scene summaries, "best of" passages. Complements Memory for structured notes.
17. **Professional Editor MCP** — Editorial-style feedback (structure, pacing, clarity). Valuable for editing passes.
18. **Fiction Reverse Engineering MCP** — Break down published fiction or your drafts into structure and technique. Supports learning and editing.
19. **Exa MCP** — Semantic research (e.g., survivor accounts, period sources). Deeper than keyword search for authentic detail.
20. **Brave Search MCP** — Alternative search with generous free tier. Use when DuckDuckGo is insufficient.

### Tier 3 — Versioning, Tasks, Export, and Memory Variants

21. **GitHub MCP** — Version control, branches for alternate plotlines. Supports both editing (comparing versions) and safe experimentation.
22. **Linear MCP** — Task tracking (revision tasks, pacing passes, fact-check items). Keeps editing work visible.
23. **Pandoc MCP** — Export to DOCX, PDF, EPUB. Required for submission and beta readers.
24. **Mem0 / OpenMemory MCP** — Persistent memory across sessions (preferences, prior decisions). Supports authentic writing by remembering your choices.
25. **Memorygraph / Enhanced MCP Memory / Supermemory** — Alternative or extended memory backends. Use for redundancy or specialized queries.
26. **Sequential Thinking (Rust)** — Same reasoning as Reference, faster. Use for full-manuscript or multi-chapter analysis.
27. **Book Series MCP** — Character arcs, plot threads, research notes in a structured DB. Useful even for one novel.
28. **Vectara MCP** — Semantic search across the manuscript. Supports editing (thematic alignment) and finding "all scenes about X."
29. **Zen / PAL MCP** — Multi-model routing (dialogue, long-manuscript, synthesis). Use when you want the best model per task.
30. **Cursor Hooks (sessionStart, afterFileEdit, stop)** — Load context, run lint, word report. Automate the "haunting" and quality checks.

### Tier 4 — Automation, Collaboration, and Extended Tools

31. **n8n MCP (workflow-automation)** — Automate backups, reminders, or "tag scene → create Linear issue." Reduces manual steps.
32. **Anki MCP** — Flashcards for continuity (character facts, timeline). Reinforces consistency during drafting.
33. **Google Drive / Workspace MCP** — Cloud store for drafts and notes. Sync and backup.
34. **Text-to-Speech (AssemblyAI or similar)** — Read drafts aloud for rhythm and dialogue. Supports both editing and authentic voice.
35. **Figma MCP** — Storyboards, maps, timelines. Visual support for structure and geography.
36. **Multi-Agent Debate MCP** — Multiple models debate a choice (e.g., kill vs. arrest). Surfaces alternatives for editing and decision-making.
37. **Perplexity MCP** — Web-augmented, synthesized answers. Research and market context.
38. **Ultrarag / Ragenta MCPs** — RAG over your manuscript. Grounds answers in what you actually wrote.
39. **Context7 MCP** — Context management for long conversations. Keeps earlier decisions in scope.
40. **Cursor Commands (e.g., /continuity-check, /word-report)** — Shortcuts that invoke sub-agent or skill + MCP workflow.

### Tier 5 — Specialized and Optional

41. **Cursor Prompts (saved multi-step prompts)** — Encode "Memory → Sequential Thinking → Rules → revise" in one reusable prompt.
42. **Cursor Snippets** — Quick injection of "Query Memory" or "Use Sequential Thinking" instructions.
43. **Puppeteer MCP / Fetch MCP** — Browser automation and HTTP for research or scraping. Complements Firecrawl and browser tool.
44. **Cursor native browser tool** — Visual verification and comparison when available. Use with a Rule or Skill for "verify fact or style at URL."
45. **Supabase MCP** — Structured DB for outlines or research. Optional persistence layer.
46. **Writer MCP** — Word counts, goals, writing-platform integration. Progress tracking.
47. **Open Library MCP** — Book metadata and references. Period and tradition context.
48. **Dennis Lehane Style MCP (or author-style MCPs)** — Additional style references. Expands voice palette.
49. **Scalemcp** — Scale or manage MCP usage. Operational for heavy workflows.
50. **AI Writers Workshop MCP** — Workshop-style exercises. Supports experimentation within story truth.
51. **YepCode MCP** — Generate and run code (e.g., emotional-arc analyzer, dialogue extractor). Extends ecosystem with custom tools.
52. **Toolbox MCP** — Bundled utilities for ad hoc file or format tasks.
53. **Slack MCP** — Notifications and sharing with team or beta readers.
54. **Getgather / Ebook / Google Books MCPs** — Access to books and ebooks for quotes and research.
55. **AI Context MCP / Saner AI MCP** — Context selection and validation. Keeps long-form editing coherent.
56. **Scanadi MCP AI Memory** — Another persistence option. Use if you need DB-backed memory.
57. **Pattern Finder (custom or MCP)** — Repetition and overused words. Prose-level "lint" for editing.
58. **Bugbot (conceptual)** — For prose, use Hooks + linters (Vale, LanguageTool) or Pattern Finder rather than code Bugbot.
59. **beforeSubmitPrompt / beforeReadFile / afterMCPExecution Hooks** — Optional validation and auditing. Use when you want strict structure or logs.
60. **Recommended custom command: /marathon-man-continuity** — Invoke fiction-writer sub-agent with prompt: "Run full continuity audit on the current chapter using Memory, Cognee, and Sequential Thinking; report any inconsistencies and suggest fixes."
61. **Recommended custom command: /marathon-man-style** — Invoke fiction-writer sub-agent with prompt: "Apply prose-style and continuity rules to the selected passage; use Style Emulation if available to match Goldman; return revised passage and a one-line note."
62. **Recommended custom prompt (saved): "Decide with Sequential Thinking"** — "Using Sequential Thinking (and optionally Ultra and MAS), analyze the following story decision: [paste]. Return the stepwise reasoning, alternative paths, and a clear recommendation with confidence."
63. **Recommended custom prompt (saved): "Scene from Memory"** — "Query Memory for [character] state and timeline at this point. Using that context only, draft [scene description] in Goldman-style prose. Then update Memory with any new facts introduced."
64. **Recommended custom prompt (saved): "Compass + Sub-agent"** — "Using the fiction-writer sub-agent and Compass context (story bible, prose DNA), [your task]. Ensure Memory is queried first, Sequential Thinking used for any plot decision, and Rules applied to all chapter edits."

This appendix leaves no stone unturned: every MCP from your configuration and the original guide is accounted for, and Cursor tools (Rules, Skills, Commands, Prompts, Snippets, Hooks, sub-agents, Bugbot concept, browser) are ranked together with recommended custom commands and prompts. The order favors story truth and consistency (editing) and repeatable, voice-aligned drafting (authentic personal writing). You can start with Tier 1 and add tiers as your Compass Writing System and single-novel workflow mature.

---

*Guide created for single-novel fiction writing within the Compass Writing System and haunting ecosystem. Marathon Man examples are for teaching only; swap in your own novel and apply the same structure and workflow.*

