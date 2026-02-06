# API Keys & Tokens Reference for Fiction Writing MCPs

**Last updated:** Feb 2026  
**Purpose:** Indicates which MCPs need API keys, tokens, or payment. Configure only what you use.

---

## MCPs Currently Installed (No API Needed)

| MCP | API | Cost |
|-----|-----|------|
| **walk-this-way** (Filesystem) | None | Free |
| **gitkraken** | None (GitKraken desktop) | Free |
| **Linear** | OAuth when you connect | Free tier |
| **mcp-mermaid** | None | Free |
| **sequential-thinking** | None | Free |
| **memory** (Knowledge Graph) | None | Free |
| **duckduckgo-search** | None | Free (rate limit: 1 req/sec, 15K/mo) |
| **github** (official MCP) | `GITHUB_PERSONAL_ACCESS_TOKEN` in env | Free (use same token as github-mcp) |

**GitHub MCP token:** Add to `~/.zshrc`: `export GITHUB_PERSONAL_ACCESS_TOKEN="ghp_your_token"`. Use the same token you have in github-mcp (Walk This Way).

---

## MCPs That Need API Keys or Payment

### Requires Token / Registration

| MCP | What You Need | Cost | Where to Get |
|-----|---------------|------|--------------|
| **Firecrawl** | `FIRECRAWL_API_KEY` | Free tier; ~$20/mo paid | [firecrawl.dev](https://firecrawl.dev) |
| **Brave Search** | Brave API key | 2,000 free queries/mo | [brave.com/search/api](https://brave.com/search/api) |
| **Exa** | Exa account | Varies; free tier | [exa.ai](https://exa.ai) |
| **GitHub** | Personal Access Token | Free | [github.com/settings/tokens](https://github.com/settings/tokens) |
| **Linear** | OAuth (auto when connecting) | Free tier | [linear.app](https://linear.app) |
| **Google Drive** | Google OAuth | Free (Google account) | [Google Cloud Console](https://console.cloud.google.com) |
| **Figma** | Figma account + OAuth/token | Free tier | [figma.com](https://figma.com) |
| **Vectara** | Vectara API key | Free tier | [vectara.com](https://vectara.com) |

### Requires Payment (Pay-Per-Use)

| MCP | What You Need | Cost | Where to Get |
|-----|---------------|------|--------------|
| **Zen / PAL** | OpenAI, Google, Anthropic keys | ~$30–100+/mo | platform.openai.com, ai.google.dev, console.anthropic.com |
| **Style Emulation** | `ANTHROPIC_API_KEY` | Pay-per-token | [console.anthropic.com](https://console.anthropic.com) |
| **Text-to-Speech** | Hume, OpenAI, or Google | Pay-per-use | dev.hume.ai, OpenAI, Google Cloud |
| **Multi-Agent Debate** | Multiple model APIs | Pay-per-use | Per-provider keys |

### Self-Hosted (No External API)

| MCP | What You Need | Cost |
|-----|---------------|------|
| **Cognee** | Docker | Free |
| **Fireproof** | npm install | Free |
| **Book Series** | PostgreSQL (local or hosted) | Free (DB hosting varies) |
| **Mem0** | Self-host or hosted tier | Free (self) or paid (hosted) |
| **n8n** | Self-host or cloud | Free (self) or paid (cloud) |

---

## How to Add API Keys to Cursor MCPs

1. **Environment variables:** Add keys to `~/.zshrc` or `~/.bash_profile`:
   ```bash
   export FIRECRAWL_API_KEY="your-key-here"
   export ANTHROPIC_API_KEY="your-key-here"
   ```

2. **MCP config `env`:** In `~/.cursor/mcp.json`, add an `env` block:
   ```json
   "firecrawl": {
     "command": "/opt/homebrew/bin/npx",
     "args": ["-y", "firecrawl-mcp"],
     "env": {
       "FIRECRAWL_API_KEY": "${env:FIRECRAWL_API_KEY}"
     }
   }
   ```

3. **Restart Cursor** after changing environment or config.

---

## Quick Checklist

- [ ] **No setup needed:** walk-this-way, gitkraken, Linear (OAuth), mcp-mermaid, sequential-thinking, memory, duckduckgo-search
- [ ] **Optional paid:** Firecrawl, Brave Search, Exa, Style Emulation, Zen/PAL
- [ ] **OAuth (sign in):** Linear, Google Drive, Figma – connect in Cursor when prompted

---

*For full MCP descriptions and fiction-writing use cases, see `Fiction_Writing_MCP_Guide_Curated.md`.*
