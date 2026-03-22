#!/usr/bin/env bash
#
# Packages the documents needed for OpenCode into a zip file.
# Sanitizes the package so OpenCode sees clean source material:
#   - Renames backward_engineered/ → reference_documents/
#   - Strips provenance disclaimers from file contents
#   - Excludes repo-internal files (CLAUDE.md, README.md, etc.)
#
# Usage: ./package_for_opencode.sh [output_name]
#   output_name: optional zip filename (default: opencode_package_YYYY-MM-DD.zip)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DATE=$(date +%Y-%m-%d)
OUTPUT_NAME="${1:-opencode_package_${DATE}.zip}"

cd "$SCRIPT_DIR"

echo "Packaging documents for OpenCode..."
echo ""

# Work in a temp directory so we can rename/sanitize without touching the repo
STAGING_DIR=$(mktemp -d)
trap 'rm -rf "$STAGING_DIR"' EXIT

# Copy everything we want into staging
rsync -a --exclude='.git' \
         --exclude='.claude' \
         --exclude='CLAUDE.md' \
         --exclude='README.md' \
         --exclude='output_from_opencode_to_verify' \
         --exclude='agents_md_templates' \
         --exclude='package_for_opencode.sh' \
         --exclude='*.zip' \
         --exclude='.gitkeep' \
         . "$STAGING_DIR/"

# Rename backward_engineered/ → reference_documents/
if [ -d "$STAGING_DIR/backward_engineered" ]; then
    mv "$STAGING_DIR/backward_engineered" "$STAGING_DIR/reference_documents"
    echo "  Renamed: backward_engineered/ → reference_documents/"
fi

# Strip provenance disclaimers from all markdown files
# These are italic paragraphs (starting with *) that contain telltale phrases
PROVENANCE_PATTERNS="backward-engineered|backward engineered|reverse-engineered|reverse engineered|reconstructed from|realistic reconstruction"
find "$STAGING_DIR" -name '*.md' -print0 | while IFS= read -r -d '' file; do
    # Remove italic disclaimer lines that match provenance language
    # Matches lines starting with * that contain provenance phrases, plus any
    # immediately following blank line
    perl -i -0777 -pe "s/^\*[^\n]*(?:${PROVENANCE_PATTERNS})[^\n]*\*\n\n?//gmi" "$file"
done
echo "  Stripped provenance disclaimers from file contents"

# Also update any internal references to the old folder name within file contents
find "$STAGING_DIR" -name '*.md' -print0 | while IFS= read -r -d '' file; do
    perl -i -pe 's/backward_engineered/reference_documents/g' "$file"
done
echo "  Updated internal folder references"

# Create the zip from the staging directory
cd "$STAGING_DIR"
zip -r "$SCRIPT_DIR/$OUTPUT_NAME" . -x '.DS_Store' > /dev/null

cd "$SCRIPT_DIR"
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
