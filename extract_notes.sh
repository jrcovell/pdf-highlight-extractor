#!/bin/bash

# Usage: ./extract_notes.sh path/to/file.pdf
# Output: file_highlights.txt


# makes script global from terminal 
# mv ~/extract_highlights.sh /usr/local/bin/extract_notes
# chmod +x /usr/local/bin/extract_highlights
set -e

PDF="$1"
OFFSET="$2"
BASENAME=$(basename "$PDF" .pdf)
OUTFILE="${BASENAME}_highlights.txt"

# Activate venv if needed
source ~/venv/bin/activate

# Extract highlights, optional page offset command 
if [ -n "$OFFSET" ]; then
  pdfannots --page-number-offset="$OFFSET" "$PDF" > "$OUTFILE"
else
  pdfannots "$PDF" > "$OUTFILE"
fi

# Rename default section headers
sed -i '' 's/## Highlights/## Summary/' "$OUTFILE"
sed -i '' 's/## Nits/## Traffic Data/' "$OUTFILE"

cat "$OUTFILE" | pbcopy

echo "Extracted highlights saved to $OUTFILE"