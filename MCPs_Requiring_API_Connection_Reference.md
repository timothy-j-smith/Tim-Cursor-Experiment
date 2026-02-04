# MCPs and Tools Requiring an API or External Connection — Reference for Creative Writing

**Purpose:** This document lists only those MCPs (and similar Cursor writing tools) that are **not** fully connected to Cursor until you add an API key, OAuth, or another external service. Each entry is ordered by importance for creative writing and includes what is missing, cost, how to secure and store the API, and why that MCP requires an API while others do not.  
**Scope:** MCPs and tools we have discussed that depend on a third-party API or agency to function.

---

## Numbered Outline: MCPs and Like Items Requiring API or Connection (by importance for creative writing)

1. **Style Emulation MCP**  
   - **What is missing:** `ANTHROPIC_API_KEY` (Anthropic API key).  
   - **Cost:** Pay-per-token (usage-based); typically a few dollars to tens of dollars per month depending on volume.  
   - **How to secure:** Sign up at console.anthropic.com; create an API key in the API Keys section; do not share the key or commit it to version control.  
   - **Where to store:** In your shell profile (e.g. `~/.zshrc`) as `export ANTHROPIC_API_KEY="sk-ant-..."` and reference in `mcp.json` as `"env": { "ANTHROPIC_API_KEY": "env:ANTHROPIC_API_KEY" }`. Alternatively use a `.env` file in a location excluded from Git and load it only when Cursor or the MCP starts.  
   - **API definition (short):** An API key is a secret string that authenticates your requests to Anthropic’s servers so they can bill you and allow the Style Emulation MCP to call their models for style analysis and rewriting.  
   - **Why important for this MCP:** Style Emulation needs to call Anthropic’s language models to analyze and rewrite prose; without the key the MCP cannot reach those services.  
   - **Why this MCP requires an API while others do not:** The MCP depends on cloud-hosted AI (Anthropic); that service is not free to run and is accessed over the network. MCPs like Knowledge Graph Memory or Sequential Thinking can run locally or use free/official endpoints that do not require your own paid key.

2. **Firecrawl MCP**  
   - **What is missing:** `FIRECRAWL_API_KEY`.  
   - **Cost:** Free tier available; paid plans around $20/month or more for heavy use.  
   - **How to secure:** Sign up at firecrawl.dev; copy the API key from the dashboard; store in env only; never commit to Git.  
   - **Where to store:** `~/.zshrc` or `~/.bash_profile`: `export FIRECRAWL_API_KEY="fc-..."`; in `mcp.json`: `"env": { "FIRECRAWL_API_KEY": "env:FIRECRAWL_API_KEY" }`.  
   - **API definition:** The key authenticates your app to Firecrawl’s scraping and conversion service so the MCP can fetch and convert web pages to Markdown.  
   - **Why important:** Firecrawl performs deep, structured web scraping and conversion; the vendor hosts and maintains this; your key authorizes and pays for use.  
   - **Why API required:** Scraping and conversion run on Firecrawl’s infrastructure; free MCPs like DuckDuckGo use different, rate-limited, or non-key-based access.

3. **Vectara MCP**  
   - **What is missing:** `VECTARA_API_KEY` and `VECTARA_ENV` (environment/corpus ID).  
   - **Cost:** Free tier; paid for higher usage.  
   - **How to secure:** Sign up at vectara.com; create an environment and application; copy API key and environment ID from the console; store in env only.  
   - **Where to store:** `export VECTARA_API_KEY="..."` and `export VECTARA_ENV="..."` in shell profile; reference both in `mcp.json` env block.  
   - **API definition:** The key and env ID let the MCP index and query your manuscript in Vectara’s semantic search service.  
   - **Why important:** Enables semantic search over your novel (“find all scenes about X”) for continuity and Scalpel/Hose editing.  
   - **Why API required:** Indexing and neural search run on Vectara’s servers; local MCPs do not provide this capability without a hosted backend.

4. **Zen MCP (zen-orchestrator) / Multi-Agent Debate MCP**  
   - **What is missing:** `OPENAI_API_KEY`, `GOOGLE_API_KEY`, `ANTHROPIC_API_KEY` (one or more, depending on which models you route to).  
   - **Cost:** Roughly $30–100+ per month pay-per-use across providers.  
   - **How to secure:** Create accounts at platform.openai.com, ai.google.dev, console.anthropic.com; generate API keys; store each in env; restrict keys by scope if the provider allows.  
   - **Where to store:** Same pattern—export each key in `~/.zshrc`; reference in `mcp.json` with `env:VAR_NAME`.  
   - **API definition:** Each key authenticates requests to that provider’s LLM API so Zen or Multi-Agent Debate can route work to different models.  
   - **Why important:** Lets you use the best model per task (e.g. dialogue vs. long-manuscript vs. synthesis) and, for Debate, multiple viewpoints.  
   - **Why API required:** These MCPs call multiple commercial LLM APIs; those services require keys for access and billing.

5. **GitHub MCP**  
   - **What is missing:** `GITHUB_TOKEN` (your project’s mcp.json uses `--token env:GITHUB_TOKEN`; use this exact variable name).  
   - **Cost:** Free for personal use.  
   - **How to secure:** github.com/settings/tokens → Generate new token (classic); choose minimal scope (e.g. repo); no expiration is supported; store in env only.  
   - **Where to store:** `export GITHUB_TOKEN="ghp_..."` in `~/.zshrc` (or `~/.bash_profile`); mcp.json already references it via `env:GITHUB_TOKEN`.  
   - **API definition:** The token is an OAuth-style credential that lets the MCP perform Git operations (read/write repos, branches) on your behalf without your password.  
   - **Why important:** Version control and branches for drafts and alternate plotlines.  
   - **Why API required:** GitHub’s API requires authentication for repo access; the MCP uses that API rather than only local Git.  
   - **Note:** If you have already set a GitHub Personal Access Token with no expiration and saved the documentation, ensure it is exported as **GITHUB_TOKEN** (not only `GITHUB_PERSONAL_ACCESS_TOKEN`) so this MCP can use it. If you use both names elsewhere, add `export GITHUB_TOKEN="$GITHUB_PERSONAL_ACCESS_TOKEN"` so the GitHub MCP stays connected.

6. **AssemblyAI MCP**  
   - **What is missing:** `ASSEMBLYAI_API_KEY`.  
   - **Cost:** Pay-per-use; free tier available.  
   - **How to secure:** Sign up at assemblyai.com; copy API key from dashboard; store in env.  
   - **Where to store:** `export ASSEMBLYAI_API_KEY="..."`; reference in mcp.json.  
   - **API definition:** The key authorizes the MCP to send audio to AssemblyAI for transcription and/or to request synthesized speech.  
   - **Why important:** Text-to-speech for reading drafts aloud (Scalpel/Hose) and optional dictation.  
   - **Why API required:** Audio processing runs on AssemblyAI’s servers; no local free equivalent in this MCP.

7. **ProWritingAid (when wrapped as MCP or used via Hook)**  
   - **What is missing:** `PROWRITINGAID_API_KEY`.  
   - **Cost:** Subscription; check prowritingaid.com for API pricing.  
   - **How to secure:** Sign up at prowritingaid.com; obtain API key from developer/account section; store in env.  
   - **Where to store:** Same as above—env variable; reference in wrapper MCP config or Hook script.  
   - **API definition:** The key lets your wrapper or script send text to ProWritingAid’s grammar/style API and receive suggestions.  
   - **Why important:** Rule-based grammar and style checks to complement Style Emulation.  
   - **Why API required:** ProWritingAid is a hosted service; there is no official MCP without calling their API.

8. **Exa MCP**  
   - **What is missing:** `EXA_API_KEY`.  
   - **Cost:** Varies; free tier often available.  
   - **How to secure:** Sign up at exa.ai; create API key; store in env.  
   - **Where to store:** `export EXA_API_KEY="..."`; reference in mcp.json.  
   - **API definition:** The key authenticates requests to Exa’s semantic search API so the MCP can run research queries.  
   - **Why important:** Deeper, semantic research for period and theme.  
   - **Why API required:** Exa’s search index and models run in their cloud; the MCP is a client to that service.

9. **Perplexity MCP**  
   - **What is missing:** `PERPLEXITY_API_KEY`.  
   - **Cost:** Check perplexity.ai pricing.  
   - **How to secure:** Sign up at perplexity.ai (or API provider); obtain key; store in env.  
   - **Where to store:** Env variable; reference in mcp.json.  
   - **API definition:** The key allows the MCP to send queries to Perplexity’s web-augmented answer API.  
   - **Why important:** Synthesized, cited research for world-building and market context.  
   - **Why API required:** Perplexity is a hosted product; the MCP is an API client.

10. **Brave Search MCP**  
    - **What is missing:** `BRAVE_API_KEY`.  
    - **Cost:** 2,000 free queries/month; paid beyond that.  
    - **How to secure:** brave.com/search/api; sign up; create key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key authorizes the MCP to use Brave’s search API for web results.  
    - **Why important:** Alternative search when DuckDuckGo is rate-limited or insufficient.  
    - **Why API required:** Brave’s search API is a commercial product; DuckDuckGo MCP uses a different, keyless integration.

11. **Google Workspace MCP (Google Drive)**  
    - **What is missing:** `GOOGLE_OAUTH_CLIENT_ID` and `GOOGLE_OAUTH_CLIENT_SECRET` (OAuth credentials).  
    - **Cost:** Free with a Google account.  
    - **How to secure:** Google Cloud Console → create project → enable Drive/Workspace APIs → create OAuth 2.0 credentials; store client ID and secret in env; never commit.  
    - **Where to store:** Env variables; Cursor or the MCP will prompt for user OAuth flow when first used.  
    - **API definition:** OAuth credentials identify your app to Google; the user signs in once to grant access to Drive; the MCP then uses tokens to read/write files.  
    - **Why important:** Cloud storage and sync for outlines, drafts, and research.  
    - **Why API required:** Drive is a cloud service; access is via Google’s OAuth and Drive API.

12. **n8n MCP (workflow-automation)**  
    - **What is missing:** `N8N_API_KEY` (if using n8n cloud).  
    - **Cost:** Free self-hosted; paid if using n8n cloud.  
    - **How to secure:** If cloud: sign up at n8n.io; create API key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key lets the MCP trigger or query n8n workflows from Cursor.  
    - **Why important:** Automate backups, reminders, or “tag scene → create Linear issue.”  
    - **Why API required:** Cloud n8n requires authentication; self-hosted n8n may use a different or no key.

13. **Figma MCP**  
    - **What is missing:** `FIGMA_ACCESS_TOKEN`.  
    - **Cost:** Free tier.  
    - **How to secure:** figma.com → Settings → Personal Access Tokens; create token; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The token authenticates the MCP to Figma’s API so it can read/write files and frames (e.g. storyboards).  
    - **Why important:** Visual storyboards and maps if you use Figma.  
    - **Why API required:** Figma is a hosted design tool; the MCP is an API client.

14. **Linear MCP**  
    - **What is missing:** OAuth (or Linear API token); Cursor typically prompts to connect when first used.  
    - **Cost:** Free tier.  
    - **How to secure:** linear.app → Settings → API; create token if required; or complete OAuth in Cursor when prompted.  
    - **Where to store:** If token: env variable; if OAuth: Cursor stores the token after you sign in.  
    - **API definition:** Linear’s API (or OAuth) lets the MCP create and read issues and roadmap data.  
    - **Why important:** Task tracking for revision and milestones.  
    - **Why API required:** Linear is a cloud app; the MCP integrates via their API.

15. **Slack MCP**  
    - **What is missing:** `SLACK_BOT_TOKEN` and `SLACK_TEAM_ID`.  
    - **Cost:** Free (Slack workspace).  
    - **How to secure:** api.slack.com → create app → install to workspace; copy bot token and team ID; store in env.  
    - **Where to store:** Env variables; reference in mcp.json.  
    - **API definition:** The token and team ID let the MCP post messages and read channels on your behalf.  
    - **Why important:** Notifications and sharing with beta readers or collaborators.  
    - **Why API required:** Slack is a cloud service; the MCP uses Slack’s API.

16. **Supabase MCP**  
    - **What is missing:** `SUPABASE_ACCESS_TOKEN`.  
    - **Cost:** Free tier.  
    - **How to secure:** supabase.com → create project → Project Settings → API; copy anon or service key (or personal access token if available); store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The token authenticates the MCP to your Supabase project for database and storage access.  
    - **Why important:** Optional structured storage for outlines or research.  
    - **Why API required:** Supabase is a hosted backend; the MCP is a client.

17. **OpenMemory MCP**  
    - **What is missing:** `OPENMEMORY_API_KEY`.  
    - **Cost:** Free tier; paid for higher usage.  
    - **How to secure:** Sign up at app.openmemory.dev (or provider); obtain API key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key lets the MCP store and retrieve author preferences and prior decisions in OpenMemory’s service.  
    - **Why important:** Cross-session author memory.  
    - **Why API required:** OpenMemory is a hosted memory layer; the MCP talks to it over the API.

18. **Book Series MCP**  
    - **What is missing:** `POSTGRES_URI` (PostgreSQL connection string).  
    - **Cost:** Free (self-hosted Postgres) or hosted DB (e.g. Supabase, Neon, Railway—often free tier).  
    - **How to secure:** Create a PostgreSQL database; set POSTGRES_URI to a connection string (include user/password); store in env; never commit the URI.  
    - **Where to store:** `export POSTGRES_URI="postgresql://user:password@host:5432/dbname"`; reference in mcp.json.  
    - **API definition:** Here “API” is the database connection: the MCP uses the URI to connect to Postgres and run queries; the database is the “service” the MCP depends on.  
    - **Why important:** Structured character, plot, and research storage for one or more novels.  
    - **Why API required:** The MCP expects a Postgres backend; it does not embed a database.

19. **Writer MCP**  
    - **What is missing:** `POSTGRES_URI` and optionally `OPENAI_API_KEY`.  
    - **Cost:** DB cost (see above) plus OpenAI if used.  
    - **How to secure:** Same as Book Series for Postgres; add OpenAI key from platform.openai.com if you use LLM features.  
    - **Where to store:** Both in env; reference in mcp.json.  
    - **API definition:** Postgres URI for storage; OpenAI key for any model-based features the Writer MCP uses.  
    - **Why important:** Word counts, goals, and progress tracking.  
    - **Why API required:** The MCP is designed to use a DB and optionally an LLM API.

20. **Scanadi MCP AI Memory**  
    - **What is missing:** `POSTGRES_URI`.  
    - **Cost:** Same as Book Series.  
    - **How to secure:** Same as #18.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** Same idea—the MCP needs a Postgres connection to persist memory.  
    - **Why important:** Alternative DB-backed memory if you prefer it over Knowledge Graph.  
    - **Why API required:** The MCP does not include an embedded DB.

21. **Google Books MCP**  
    - **What is missing:** `GOOGLE_API_KEY`.  
    - **Cost:** Free tier (Google Cloud).  
    - **How to secure:** Google Cloud Console → enable Books API → create API key; restrict by API if possible; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key lets the MCP query Google Books API for metadata and sometimes content.  
    - **Why important:** Book and tradition research.  
    - **Why API required:** Google Books is a cloud API; the MCP is a client.

22. **Goodreads Scraper MCP (Apify)**  
    - **What is missing:** `APIFY_API_TOKEN`.  
    - **Cost:** Free tier at apify.com.  
    - **How to secure:** Sign up at apify.com; copy API token; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The token authenticates the MCP to Apify’s platform so it can run scrapers (e.g. Goodreads).  
    - **Why important:** Reviews and market awareness.  
    - **Why API required:** Apify runs scrapers in the cloud; the MCP triggers them via API.

23. **Grammarly AI MCP**  
    - **What is missing:** `GRAMMARLY_API_KEY`.  
    - **Cost:** Subscription or pay-per-use; check developer.grammarly.com.  
    - **How to secure:** Obtain key from Grammarly’s developer program; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key lets the MCP send text to Grammarly’s API for grammar and style feedback.  
    - **Why important:** Grammar and style; overlaps with ProWritingAid—pick one.  
    - **Why API required:** Grammarly is a hosted service; the MCP is an API client.

24. **Word Tune MCP**  
    - **What is missing:** `AI21_API_KEY`.  
    - **Cost:** Pay-per-use at ai21.com.  
    - **How to secure:** Sign up at ai21.com; create API key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key authenticates the MCP to AI21’s API for rewriting and suggestions.  
    - **Why important:** Optional rewriting; Style Emulation can cover similar needs.  
    - **Why API required:** AI21 is a cloud LLM/rewrite provider.

25. **Winston AI MCP**  
    - **What is missing:** `WINSTON_AI_API_KEY`.  
    - **Cost:** Pay-per-use at winston.ai.  
    - **How to secure:** Sign up at winston.ai; obtain key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key lets the MCP send content to Winston for AI-detection analysis.  
    - **Why important:** Optional disclosure or editorial use.  
    - **Why API required:** Winston is a hosted detection service.

26. **Copyscape MCP**  
    - **What is missing:** `COPYSCAPE_API_KEY`.  
    - **Cost:** Pay-per-use at copyscape.com.  
    - **How to secure:** Sign up at copyscape.com; obtain API key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key authorizes the MCP to run plagiarism checks via Copyscape’s API.  
    - **Why important:** Pre-submission plagiarism check.  
    - **Why API required:** Copyscape is a commercial plagiarism service.

27. **Vellum MCP**  
    - **What is missing:** `VELLUM_API_KEY`.  
    - **Cost:** Subscription or pay-per-use at vellum.ai.  
    - **How to secure:** Sign up at vellum.ai; obtain key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key lets the MCP use Vellum’s API for formatting and export.  
    - **Why important:** Professional formatting and export if you use Vellum.  
    - **Why API required:** Vellum is a hosted formatting platform.

28. **YepCode MCP**  
    - **What is missing:** `YEPCODE_API_KEY`.  
    - **Cost:** Varies; check yepcode.io.  
    - **How to secure:** Sign up at yepcode.io; obtain key; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The key lets the MCP run generated code or workflows on YepCode’s platform.  
    - **Why important:** Custom tools (e.g. emotional-arc analyzer) without hosting code yourself.  
    - **Why API required:** YepCode runs code in their environment; the MCP triggers it via API.

29. **Clerk MCP**  
    - **What is missing:** `CLERK_SECRET_KEY`.  
    - **Cost:** Free tier at clerk.com.  
    - **How to secure:** Create app at clerk.com; copy secret key from API Keys; store in env.  
    - **Where to store:** Env variable; reference in mcp.json.  
    - **API definition:** The secret key authenticates the MCP to Clerk’s auth API for user management.  
    - **Why important:** Only if you build a shared or multi-user writing app.  
    - **Why API required:** Clerk is a hosted authentication service.

---

## Where to Store All APIs and What an “API” Is Here

**Where to store:** Store every key and secret in **environment variables** (e.g. in `~/.zshrc` or `~/.bash_profile` on macOS) so they are available to Cursor when it starts the MCP servers. Use the form `export VAR_NAME="value"`. In your MCP config (e.g. `mcp.json` or Cursor Settings → MCP), reference them as `"env": { "VAR_NAME": "env:VAR_NAME" }` so Cursor passes them into the MCP process without you putting secrets in the config file. Do **not** put raw keys in `mcp.json` or any file committed to Git. Optionally use a `.env` file in a directory that is in `.gitignore` and load it only in the shell or in a small launcher script; the principle is the same: keys live outside the repo and are injected at runtime.

**API definition (general):** An API (Application Programming Interface) is a set of rules and endpoints that let one program (here, an MCP server) request work from another (the vendor’s service). For these MCPs, “API” usually means a **REST API** or **OAuth** that the MCP calls over the internet. The **API key** (or OAuth token) is a secret that proves the request is authorized and often ties usage to your account for billing. So when we say an MCP “needs an API,” we mean it must call an external service that requires such a key or token; without it, the MCP cannot complete the request.

---

## History of APIs and Evolution with MCPs (10 sentences)

APIs have been used for decades to let different systems exchange data and trigger actions without sharing source code. Early examples include remote procedure calls (RPC) and SOAP in enterprise systems, and later REST and JSON became the norm for web and mobile apps. Companies exposed APIs so third-party developers could build integrations (e.g. payment gateways, maps, and email), and API keys emerged as a simple way to identify and meter callers. Over time, APIs expanded from internal and partner use to public “platform” APIs (e.g. Twitter, Stripe, OpenAI), and authentication evolved from single keys to OAuth and scoped tokens for security. Today, many AI and data services (Anthropic, Firecrawl, Vectara, etc.) are consumed only via API, with no local install. The Model Context Protocol (MCP) does not replace APIs; it standardizes how an AI host (e.g. Cursor) discovers and calls tools, and many of those tools are MCP servers that in turn call external APIs. So the pattern is: you hold the API key, the MCP server receives it from the host and uses it when calling the vendor, and the AI orchestrates by choosing which MCP (and thus which API) to call. APIs are thus the “plumbing” that lets MCPs add capabilities (search, style, memory, export) that are not built into the host. As MCP adoption grows, more vendors may offer official MCP servers that bundle their API, reducing the need for you to “wrap” an API yourself, but the underlying dependency on the vendor’s API and key will remain for any hosted service.

---

## What APIs Mean for Your Work and the Role of APIs and MCPs (10 sentences)

For your fiction workflow, APIs are the gate that connects Cursor and your MCPs to paid or hosted services: style emulation, deep research, semantic search, version control, and export. Without the right keys, those MCPs appear in the list but cannot run their core actions, so securing and storing API keys is what actually “connects” them to Cursor. The MCPs that do not require an API either run fully locally (e.g. Sequential Thinking, Knowledge Graph Memory in its default setup, Filesystem) or use free, keyless endpoints (e.g. DuckDuckGo), so they work as soon as they are installed. The ones that do require an API depend on a vendor’s servers and business model: the vendor provides the capability (e.g. Firecrawl’s scraping, Vectara’s search) and uses the key to authorize and bill you. Your job is to decide which of these capabilities are worth the cost and setup, obtain the keys, store them safely in env (never in the repo), and reference them in MCP config so Cursor can pass them through. APIs and MCPs work together: MCPs define *what* tools the AI can use and *how* they are invoked, and APIs are *how* many of those tools get their real work done on remote systems. Prioritizing which APIs to add first (e.g. Style Emulation and Firecrawl for creative writing) lets you bring the most important MCPs into “working order” without enabling every possible integration. Over time, your “API surface” (the set of keys you maintain) becomes part of your writing infrastructure, similar to your choice of which MCPs and Cursor tools to enable. Both APIs and MCPs matter: MCPs without APIs extend Cursor with local or free capabilities, and MCPs that use APIs extend it with powerful hosted capabilities in exchange for keys and cost. Treating this document as the single place where “what is missing” and “how to secure and store it” are spelled out keeps your creative-writing stack clear and maintainable.

---

*Reference for MCPs and tools requiring an API or external connection. Order of items is by importance for creative writing; secure and store all keys in environment variables and never commit them to version control.*
