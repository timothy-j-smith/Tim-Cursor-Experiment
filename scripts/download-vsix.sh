#!/bin/bash
# Download a VS Code extension as .vsix from the marketplace for installation in Cursor.
# Usage: ./download-vsix.sh [extension-id]
# Example: ./download-vsix.sh Arminez.file-tree-context

set -e

EXTENSION_ID="${1:-Arminez.file-tree-context}"
PUBLISHER="${EXTENSION_ID%%.*}"
EXTENSION_NAME="${EXTENSION_ID#*.}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
OUTPUT_DIR="$SCRIPT_DIR/../.cursor/extensions"
mkdir -p "$OUTPUT_DIR"
OUTPUT_DIR="$(cd "$OUTPUT_DIR" && pwd)"

echo ""
echo "=== Download VSIX for Cursor ==="
echo "Extension: $EXTENSION_ID"
echo "Output:    $OUTPUT_DIR"
echo ""

# Get latest version from marketplace API
echo "Fetching version info..."
VERSION_JSON=$(curl -sL "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/$PUBLISHER/vsextensions/$EXTENSION_NAME/versions?api-version=6.0-preview.1" 2>/dev/null)
VERSION=$(echo "$VERSION_JSON" | grep -oE '"version":"[0-9]+\.[0-9]+\.[0-9]+"' | head -1 | cut -d'"' -f4)

if [ -z "$VERSION" ]; then
  echo "Trying alternate version detection..."
  VERSION=$(curl -sL "https://marketplace.visualstudio.com/items?itemName=$EXTENSION_ID" | grep -oE 'extensions/[^/]+/[^/]+/[0-9]+\.[0-9]+\.[0-9]+/' | head -1 | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
fi

if [ -z "$VERSION" ]; then
  echo "Error: Could not get version for $EXTENSION_ID"
  echo "You can download manually from:"
  echo "  https://marketplace.visualstudio.com/items?itemName=$EXTENSION_ID"
  echo "  (Click 'Download Extension' on the right sidebar)"
  exit 1
fi

echo "Version:   $VERSION"
echo ""

# Download vspackage (returns .vsix)
DOWNLOAD_URL="https://marketplace.visualstudio.com/_apis/public/gallery/publishers/$PUBLISHER/vsextensions/$EXTENSION_NAME/$VERSION/vspackage"
OUTPUT_FILE="$OUTPUT_DIR/${EXTENSION_NAME}-${VERSION}.vsix"

echo "Downloading..."
curl -sL -o "$OUTPUT_FILE" "$DOWNLOAD_URL"

if [ ! -f "$OUTPUT_FILE" ] || [ ! -s "$OUTPUT_FILE" ]; then
  echo "Error: Download failed or file is empty."
  rm -f "$OUTPUT_FILE"
  exit 1
fi

echo ""
echo "Done! Saved to:"
echo "  $OUTPUT_FILE"
echo ""
echo "To install in Cursor:"
echo "  1. Open Cursor"
echo "  2. Press Cmd+Shift+X (Extensions)"
echo "  3. Click the '...' menu at the top of the Extensions panel"
echo "  4. Choose 'Install from VSIX...'"
echo "  5. Select: $OUTPUT_FILE"
echo ""
