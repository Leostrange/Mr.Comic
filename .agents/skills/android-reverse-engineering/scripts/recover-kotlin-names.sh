#!/usr/bin/env bash
# recover-kotlin-names.sh — Rebuild original Kotlin class names from R8 metadata.
# Usage: bash recover-kotlin-names.sh <sources-dir> [mapping-dir]
set -euo pipefail

SOURCES_DIR="${1:-}"
MAPPING_DIR="${2:-${SOURCES_DIR}_mapping}"

if [ -z "$SOURCES_DIR" ] || [ ! -d "$SOURCES_DIR" ]; then
    echo "Usage: $0 <decompiled-sources-dir> [mapping-output-dir]"
    echo "Recovers original Kotlin class names from @DebugMetadata and @Metadata annotations."
    exit 1
fi

mkdir -p "$MAPPING_DIR/by_package"

TSV_FILE="$MAPPING_DIR/mapping.tsv"
JSON_FILE="$MAPPING_DIR/mapping.json"

echo "Obfuscated FQN	Real FQN	Source File" > "$TSV_FILE"
echo "[" > "$JSON_FILE"

TOTAL=0
RECOVERED=0

echo "Scanning for Kotlin metadata annotations..."

# Method 1: @DebugMetadata - recover from coroutine suspend lambdas
echo "--- Recovering from @DebugMetadata ---"
grep -rhn '@DebugMetadata' "$SOURCES_DIR" --include="*.java" -l 2>/dev/null | while read -r file; do
    # Extract the c = "..." field
    grep -A5 '@DebugMetadata' "$file" 2>/dev/null | grep 'c\s*=' | while read -r line; do
        REAL_FQN=$(echo "$line" | sed 's/.*c\s*=\s*"\([^"]*\)".*/\1/' | sed 's/\$.*//')
        if [ -n "$REAL_FQN" ] && [ "$REAL_FQN" != "" ]; then
            # Get the obfuscated class name from the filename
            OBF_CLASS=$(basename "$file" .java)
            # Try to get package from file path
            REL_PATH=$(realpath --relative-to="$SOURCES_DIR" "$file" 2>/dev/null || echo "$file")
            OBF_FQN=$(echo "$REL_PATH" | sed 's|/|.|g' | sed 's/\.java$//')

            echo -e "${OBF_FQN}\t${REAL_FQN}\t${REL_PATH}" >> "$TSV_FILE"
            echo "  ${OBF_FQN} -> ${REAL_FQN}"
            TOTAL=$((TOTAL + 1))
            RECOVERED=$((RECOVERED + 1))
        fi
    done
done

# Method 2: @Metadata.d2 - recover from Kotlin class metadata
echo ""
echo "--- Recovering from @Metadata ---"
grep -rhn '@Metadata' "$SOURCES_DIR" --include="*.java" -l 2>/dev/null | while read -r file; do
    # Extract d2 array values - look for L...; patterns (JVM type descriptors)
    grep -A10 '@Metadata' "$file" 2>/dev/null | grep 'd2\s*=' | while read -r line; do
        # Extract all L...; entries
        echo "$line" | grep -oE '"L[a-zA-Z0-9/_\$]+;"' | while read -r descriptor; do
            CLEAN=$(echo "$descriptor" | tr -d '"' | sed 's/^L//' | sed 's/;$//' | tr '/' '.')
            # Skip stdlib / kotlin stdlib descriptors
            if echo "$CLEAN" | grep -qE "^kotlin\.|^kotlinx\.|^java\."; then
                continue
            fi
            # Skip if it looks like a lambda/inner class (contains $)
            if echo "$CLEAN" | grep -q '\$'; then
                continue
            fi

            OBF_FQN=$(basename "$file" .java)
            REL_PATH=$(realpath --relative-to="$SOURCES_DIR" "$file" 2>/dev/null || echo "$file")
            OBF_PATH_FQN=$(echo "$REL_PATH" | sed 's|/|.|g' | sed 's/\.java$//')

            # Only add if not already found via @DebugMetadata
            if ! grep -q "$CLEAN" "$TSV_FILE" 2>/dev/null; then
                echo -e "${OBF_PATH_FQN}\t${CLEAN}\t${REL_PATH}" >> "$TSV_FILE"
                echo "  ${OBF_PATH_FQN} -> ${CLEAN}"
                TOTAL=$((TOTAL + 1))
                RECOVERED=$((RECOVERED + 1))
            fi
        done
    done
done

# Generate JSON
echo "" >> "$JSON_FILE"
echo "]" >> "$JSON_FILE"
# Convert TSV to JSON array (simplified)
if command -v python3 &>/dev/null; then
    python3 -c "
import csv, json
rows = []
with open('$TSV_FILE', 'r') as f:
    reader = csv.reader(f, delimiter='\t')
    header = next(reader, None)
    for row in reader:
        if len(row) >= 2:
            rows.append({'obfuscated': row[0], 'real': row[1], 'file': row[2] if len(row) > 2 else ''})
with open('$JSON_FILE', 'w') as f:
    json.dump(rows, f, indent=2)
" 2>/dev/null || true
fi

# Generate per-package index files
if [ -f "$TSV_FILE" ]; then
    tail -n +2 "$TSV_FILE" | while IFS=$'\t' read -r obf real file; do
        PKG=$(echo "$real" | sed 's/\.[^.]*$//')
        PKG_DIR="$MAPPING_DIR/by_package/$(echo "$PKG" | tr '.' '/')"
        mkdir -p "$PKG_DIR"
        echo -e "${obf}\t${real}\t${file}" >> "$PKG_DIR/classes.tsv"
    done
fi

echo ""
echo "=== Kotlin Name Recovery Complete ==="
echo "Mapping: $TSV_FILE"
echo "JSON:    $JSON_FILE"
echo "Packages: $MAPPING_DIR/by_package/"
echo ""
echo "To query: bash .agents/skills/android-reverse-engineering/scripts/lookup-name.sh $MAPPING_DIR <search-term>"
