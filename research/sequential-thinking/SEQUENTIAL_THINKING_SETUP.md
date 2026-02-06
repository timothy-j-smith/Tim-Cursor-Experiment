# Sequential Thinking MCP Brothers – Setup & Verification

## Status: Configuration Fixed ✅ (Feb 2026)

MCP configuration has been repaired. Changes made:

1. **walk-this-way**: Converted from invalid `directory` format to standard Filesystem MCP (`command` + `args`)
2. **mcp-mermaid**: Fixed command format (was `npx -y mcp-mermaid` as single string; now proper `command`/`args`)
3. **Sequential Thinking**: Kept only the Reference version (official); removed Ultra, MAS, Enhanced, Rust (packages unavailable or need special setup)
4. **Node.js**: Installed via Homebrew (v25.5.0) – required for npx-based MCPs
5. **Full paths**: Using `/opt/homebrew/bin/npx` and `/opt/homebrew/bin/gk` so Cursor finds them when launched from GUI

---

## What’s Configured

| Brother | Config Key | Command | Status |
|---------|------------|---------|--------|
| **Reference** | `sequential-thinking` | `npx -y @modelcontextprotocol/server-sequential-thinking` | ✅ Ready (official package exists) |
| **Ultra** | `sequential-thinking-ultra` | `npx -y @sequential-thinking/ultra` | ⚠️ Verify (package may vary) |
| **MAS** | `sequential-thinking-mas` | `npx -y @fradser/mcp-server-mas-sequential-thinking` | ⚠️ Verify (package may vary) |
| **Enhanced** | `sequential-thinking-enhanced` | `python3 -m mcp_thinking` | ⚠️ Needs Python 3.10+ and package |
| **Rust** | `sequential-thinking-rust` | `cargo run --release --bin ultrafast-mcp-sequential-thinking` | ⚠️ Needs Rust + project |

**Additional MCPs now installed:** `memory` (Knowledge Graph), `duckduckgo-search`, `walk-this-way` (Filesystem), `mcp-mermaid`. For API keys, see `API_KEYS_REFERENCE.md`.

---

## Python 3.10+ Installation

Your system currently has **Python 3.9.6**. Several MCPs (including Enhanced Sequential Thinking and some others) expect **Python 3.10+**.

### Option A: Homebrew (recommended)

Homebrew needs write access to its directories. Run in Terminal:

```bash
# Fix Homebrew permissions (run once)
sudo chown -R $(whoami) /Users/timothy/Library/Logs/Homebrew /opt/homebrew /opt/homebrew/Cellar /opt/homebrew/Frameworks /opt/homebrew/bin /opt/homebrew/etc /opt/homebrew/include /opt/homebrew/lib /opt/homebrew/opt /opt/homebrew/sbin /opt/homebrew/share /opt/homebrew/var/homebrew/linked /opt/homebrew/var/homebrew/locks

# Install Python 3.12
brew install python@3.12

# Add to PATH (add to ~/.zshrc if needed)
echo 'export PATH="/opt/homebrew/opt/python@3.12/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Option B: python.org installer

1. Go to https://www.python.org/downloads/
2. Download Python 3.12 or 3.13 for macOS
3. Run the installer
4. Use `/usr/local/bin/python3.12` or the path shown by the installer

### Verify Python

```bash
python3 --version   # Should show 3.10 or higher
# or
python3.12 --version
```

---

## How to Verify Each Brother

### 1. Restart Cursor

After changes to `~/.cursor/mcp.json`, restart Cursor so it reloads MCP config.

### 2. Check MCP Status

1. Open **Cursor Settings** (Cmd+,)
2. Go to **Features** → **MCP**
3. Confirm the Sequential Thinking servers appear and whether they show errors

### 3. Test Reference (most likely to work)

In Cursor chat, try:

```
Use Sequential Thinking to analyze: "Should Babe kill Szell at the bank in Marathon Man?"
```

If the Reference MCP is running, Claude will use it and return stepwise reasoning.

### 4. If a Brother Fails

- **Ultra / MAS**: The npm packages may be under different names or not yet published. Disable them in Cursor Settings → MCP if they cause errors.
- **Enhanced**: Requires Python 3.10+ and `pip install mcp-thinking` (or the correct package name for your setup).
- **Rust**: Requires Rust (`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`) and the Rust Sequential Thinking project cloned and built.

---

## Recommended Starting Set

Start with **Sequential Thinking (Reference)** only. It’s the official MCP and does not need Python or Rust.

1. In Cursor Settings → MCP, disable `sequential-thinking-ultra`, `sequential-thinking-mas`, `sequential-thinking-enhanced`, and `sequential-thinking-rust` if they show errors.
2. Keep `sequential-thinking` (Reference) enabled.
3. Re-enable the others after you’ve installed Python 3.10+ and verified each one.

---

## Quick Reference: Your mcp.json Location

```
~/.cursor/mcp.json
```

Or:

```
/Users/timothy/.cursor/mcp.json
```

---

*Setup doc created for the Cursor–Claude fiction writing workflow.*
