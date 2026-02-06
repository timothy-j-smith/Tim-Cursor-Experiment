# Installing VSIX Extensions in Cursor

Use this guide when an extension isn't in Cursor's Extensions marketplace but is available on the VS Code Marketplace.

---

## Step 1: Download the .vsix file

From your project folder, run:

```bash
./scripts/download-vsix.sh
```

This downloads **File Tree Context** by default to `.cursor/extensions/`.

To download a different extension, pass its ID:

```bash
./scripts/download-vsix.sh PublisherName.extension-name
```

Example extensions:
- `Arminez.file-tree-context` — File Tree Context
- `0xTanzim.filetree-pro` — FileTree Pro

---

## Step 2: Install in Cursor

1. Open **Cursor**
2. Press **`Cmd + Shift + X`** to open the Extensions panel
3. Click the **`...`** (ellipsis) at the top of the Extensions panel
4. Choose **"Install from VSIX..."**
5. Navigate to `.cursor/extensions/` in your project (or wherever the script saved the file)
6. Select the `.vsix` file and click **Open**

Cursor will install the extension. You may need to reload the window (`Cmd + Shift + P` → "Developer: Reload Window").

---

## Alternative: Drag and drop

1. Open Cursor and the Extensions panel (`Cmd + Shift + X`)
2. Drag the `.vsix` file from Finder into the Extensions panel
3. Cursor will prompt to install
