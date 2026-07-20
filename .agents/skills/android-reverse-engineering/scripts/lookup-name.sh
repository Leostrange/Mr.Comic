#!/usr/bin/env bash
# lookup-name.sh — Query the recovered Kotlin name mapping.
# Usage: bash lookup-name.sh <mapping-dir> [OPTIONS] [query]
set -euo pipefail

MAPPING_DIR="${1:-}"
shift || true

if [ -z "$MAPPING_DIR" ] || [ ! -d "$MAPPING_DIR" ]; then
    echo "Usage: $0 <mapping-dir> [OPTIONS] [query]"
    echo ""
    echo "Modes:"
    echo "  <mapping-dir> <search-term>                    Search by real class name"
    echo "  <mapping-dir> -o <obfuscated-fqn>              Resolve obfuscated -> real"
    echo "  <mapping-dir> -p <package-prefix>              List classes in a package"
    echo "  <mapping-dir> --grep <pattern> <sources-dir>   Grep sources with real names"
    exit 1
fi

TSV_FILE="$MAPPING_DIR/mapping.tsv"
if [ ! -f "$TSV_FILE" ]; then
    echo "Error: mapping.tsv not found in $MAPPING_DIR"
    echo "Run recover-kotlin-names.sh first."
    exit 1
fi

MODE="search"
QUERY=""
SOURCES_DIR=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        -o) MODE="resolve"; QUERY="$2"; shift 2 ;;
        -p) MODE="package"; QUERY="$2"; shift 2 ;;
        --grep) MODE="grep"; QUERY="$2"; SOURCES_DIR="$3"; shift 3 ;;
        *) QUERY="$1"; shift ;;
    esac
done

case "$MODE" in
    search)
        if [ -z "$QUERY" ]; then
            echo "Usage: $0 <mapping-dir> <search-term>"
            exit 1
        fi
        echo "=== Searching for: $QUERY ==="
        echo ""
        printf "%-50s %-50s %s\n" "OBFUSCATED" "REAL" "FILE"
        printf "%-50s %-50s %s\n" "----------" "----" "----"
        grep -i "$QUERY" "$TSV_FILE" | while IFS=$'\t' read -r obf real file; do
            printf "%-50s %-50s %s\n" "$obf" "$real" "$file"
        done
        COUNT=$(grep -ci "$QUERY" "$TSV_FILE" 2>/dev/null || echo "0")
        echo ""
        echo "Found: $COUNT match(es)"
        ;;
    resolve)
        if [ -z "$QUERY" ]; then
            echo "Usage: $0 <mapping-dir> -o <obfuscated-fqn>"
            exit 1
        fi
        echo "=== Resolving: $QUERY ==="
        MATCH=$(grep "^${QUERY}	" "$TSV_FILE" || true)
        if [ -n "$MATCH" ]; then
            echo "$MATCH" | while IFS=$'\t' read -r obf real file; do
                echo "Obfuscated: $obf"
                echo "Real:       $real"
                echo "File:       $file"
            done
        else
            echo "Not found. Try: grep -r '$QUERY' $TSV_FILE"
            # Also try partial match
            PARTIAL=$(grep -i "$(echo "$QUERY" | tail -c -10)" "$TSV_FILE" | head -5)
            if [ -n "$PARTIAL" ]; then
                echo ""
                echo "Similar entries:"
                echo "$PARTIAL" | while IFS=$'\t' read -r obf real file; do
                    echo "  $obf -> $real"
                done
            fi
        fi
        ;;
    package)
        if [ -z "$QUERY" ]; then
            echo "Usage: $0 <mapping-dir> -p <package-prefix>"
            exit 1
        fi
        echo "=== Package: $QUERY ==="
        echo ""
        printf "%-50s %s\n" "CLASS" "FILE"
        printf "%-50s %s\n" "-----" "----"
        grep "$QUERY" "$TSV_FILE" | while IFS=$'\t' read -r obf real file; do
            printf "%-50s %s\n" "$real" "$file"
        done
        COUNT=$(grep -c "$QUERY" "$TSV_FILE" 2>/dev/null || echo "0")
        echo ""
        echo "Found: $COUNT class(es) in package"
        ;;
    grep)
        if [ -z "$QUERY" ] || [ -z "$SOURCES_DIR" ]; then
            echo "Usage: $0 <mapping-dir> --grep <pattern> <sources-dir>"
            exit 1
        fi
        echo "=== Grep with real names: $QUERY ==="
        echo ""

        # First grep the sources
        grep -rn "$QUERY" "$SOURCES_DIR" --include="*.java" 2>/dev/null | while IFS=: read -r filepath linenum content; do
            # Try to find the real class name for this file
            REL=$(realpath --relative-to="$SOURCES_DIR" "$filepath" 2>/dev/null || echo "$filepath")
            OBF_FQN=$(echo "$REL" | sed 's|/|.|g' | sed 's/\.java$//')
            REAL_NAME=$(grep "^${OBF_FQN}	" "$TSV_FILE" 2>/dev/null | head -1 | cut -f2)

            if [ -n "$REAL_NAME" ]; then
                echo "${filepath}:${linenum}: ${content}  // real: ${REAL_NAME}"
            else
                echo "${filepath}:${linenum}: ${content}"
            fi
        done
        ;;
esac
