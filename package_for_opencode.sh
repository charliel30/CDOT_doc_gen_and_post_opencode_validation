#!/usr/bin/env bash
#
# Packages the documents needed for OpenCode into a zip file.
# Excludes: .git, CLAUDE.md, output folder contents, this script,
#           agents_md_templates (framework-only, not needed by OpenCode)
#
# Usage: ./package_for_opencode.sh [output_name]
#   output_name: optional zip filename (default: opencode_package_YYYY-MM-DD.zip)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DATE=$(date +%Y-%m-%d)
OUTPUT_NAME="${1:-opencode_package_${DATE}.zip}"

# Ensure we're in the project root
cd "$SCRIPT_DIR"

echo "Packaging documents for OpenCode..."
echo ""

# Create the zip, excluding things OpenCode doesn't need
zip -r "$OUTPUT_NAME" . \
    -x ".git/*" \
    -x ".claude/*" \
    -x "CLAUDE.md" \
    -x "output_from_opencode_to_verify/*" \
    -x "agents_md_templates/*" \
    -x "package_for_opencode.sh" \
    -x "$OUTPUT_NAME" \
    -x "*.zip" \
    -x ".gitkeep"

echo ""
echo "Created: $SCRIPT_DIR/$OUTPUT_NAME"
echo ""

# Show what's in the zip
echo "Contents:"
unzip -l "$OUTPUT_NAME" | grep -E "\.md$" | awk '{print "  " $4}'
echo ""

FILE_COUNT=$(unzip -l "$OUTPUT_NAME" | grep -c "\.md$")
ZIP_SIZE=$(du -h "$OUTPUT_NAME" | cut -f1)
echo "Files: $FILE_COUNT markdown documents"
echo "Size:  $ZIP_SIZE"
echo ""
echo "Transfer this zip to the OpenCode machine and unzip it."
