#!/usr/bin/env bash
# decompile.sh — Decompile APK/XAPK/JAR/AAR with jadx and/or Fernflower.
# Usage: bash decompile.sh [OPTIONS] <file>
set -euo pipefail

ENGINE="jadx"
OUTPUT=""
DEOBF=false
NO_RES=false
INPUT=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        -o) OUTPUT="$2"; shift 2 ;;
        --deobf) DEOBF=true; shift ;;
        --no-res) NO_RES=true; shift ;;
        --engine) ENGINE="$2"; shift 2 ;;
        -h|--help)
            echo "Usage: $0 [OPTIONS] <file>"
            echo "Options:"
            echo "  -o <dir>          Output directory"
            echo "  --deobf           Enable deobfuscation"
            echo "  --no-res          Skip resource decoding"
            echo "  --engine ENGINE   jadx (default), fernflower, or both"
            exit 0
            ;;
        -*) echo "Unknown option: $1"; exit 1 ;;
        *) INPUT="$1"; shift ;;
    esac
done

if [ -z "$INPUT" ]; then
    echo "Error: No input file specified."
    echo "Usage: $0 [OPTIONS] <file.apk|file.xapk|file.jar|file.aar>"
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    echo "Error: File not found: $INPUT"
    exit 1
fi

if [ -z "$OUTPUT" ]; then
    BASENAME=$(basename "$INPUT" | sed 's/\.[^.]*$//')
    OUTPUT="${BASENAME}-decompiled"
fi

echo "=== Android Reverse Engineering: Decompile ==="
echo "Input:   $INPUT"
echo "Output:  $OUTPUT"
echo "Engine:  $ENGINE"
echo "Deobf:   $DEOBF"
echo ""

# Detect file type
EXT="${INPUT##*.}"
EXT=$(echo "$EXT" | tr '[:upper:]' '[:lower:]')

# Handle XAPK (ZIP bundle)
if [ "$EXT" = "xapk" ]; then
    echo "XAPK detected. Extracting APKs..."
    XAPK_DIR="$OUTPUT/_xapk_extracted"
    mkdir -p "$XAPK_DIR"
    unzip -o "$INPUT" -d "$XAPK_DIR" >/dev/null

    APK_FILES=$(find "$XAPK_DIR" -name "*.apk" -type f)
    APK_COUNT=$(echo "$APK_FILES" | wc -l)

    if [ "$APK_COUNT" -eq 0 ]; then
        echo "Error: No APK files found inside XAPK."
        exit 1
    fi

    echo "Found $APK_COUNT APK(s):"
    echo "$APK_FILES" | while read -r f; do echo "  - $(basename "$f")"; done

    # Decompile each APK
    for apk in $APK_FILES; do
        APK_BASENAME=$(basename "$apk" .apk)
        if [ "$APK_BASENAME" = "base" ]; then
            APK_OUT="$OUTPUT/base"
        else
            APK_OUT="$OUTPUT/$APK_BASENAME"
        fi

        if [ "$ENGINE" = "both" ]; then
            _decompile_jadx "$apk" "$APK_OUT/jadx" "$DEOBF" "$NO_RES"
            _decompile_fernflower "$apk" "$APK_OUT/fernflower"
        elif [ "$ENGINE" = "fernflower" ]; then
            _decompile_fernflower "$apk" "$APK_OUT"
        else
            _decompile_jadx "$apk" "$APK_OUT" "$DEOBF" "$NO_RES"
        fi
    done

    echo ""
    echo "XAPK decompilation complete. Output in: $OUTPUT/"
    exit 0
fi

# Decompile function definitions
_decompile_jadx() {
    local input_file="$1"
    local out_dir="$2"
    local use_deobf="$3"
    local skip_res="$4"

    mkdir -p "$out_dir"
    local jadx_args=("-d" "$out_dir")
    if [ "$use_deobf" = true ]; then jadx_args+=("--deobf"); fi
    if [ "$skip_res" = true ]; then jadx_args+=("--no-res"); fi
    jadx_args+=("--show-bad-code")

    echo "Decompiling with jadx..."
    if jadx "${jadx_args[@]}" "$input_file"; then
        echo -e "\033[0;32mjadx decompilation succeeded.\033[0m"
    else
        echo -e "\033[1;33mjadx exited with warnings. Check output for partial results.\033[0m"
    fi
}

_decompile_fernflower() {
    local input_file="$1"
    local out_dir="$2"

    mkdir -p "$out_dir"

    # For APK files, need dex2jar first
    local ff_input="$input_file"
    local FEXT="${input_file##*.}"
    FEXT=$(echo "$FEXT" | tr '[:upper:]' '[:lower:]')

    if [ "$FEXT" = "apk" ] || [ "$FEXT" = "dex" ]; then
        if ! command -v d2j-dex2jar &>/dev/null; then
            echo -e "\033[1;33mdex2jar not found. Skipping Fernflower for APK.\033[0m"
            echo "Install: bash .agents/skills/android-reverse-engineering/scripts/install-dep.sh dex2jar"
            return 1
        fi
        local jar_tmp="$out_dir/_converted.jar"
        d2j-dex2jar -f -o "$jar_tmp" "$input_file"
        ff_input="$jar_tmp"
    fi

    local FF_JAR="${FERNFLOWER_JAR_PATH:-}"
    if [ -z "$FF_JAR" ] || [ ! -f "$FF_JAR" ]; then
        # Try to find it
        for candidate in \
            "$HOME/.local/share/vineflower.jar" \
            "$HOME/vineflower/vineflower.jar" \
            "/usr/local/lib/fernflower.jar"; do
            if [ -f "$candidate" ]; then
                FF_JAR="$candidate"
                break
            fi
        done
    fi

    if [ -z "$FF_JAR" ] || [ ! -f "$FF_JAR" ]; then
        echo -e "\033[1;33mFernflower/Vineflower JAR not found.\033[0m"
        echo "Set FERNFLOWER_JAR_PATH or install: bash .agents/skills/android-reverse-engineering/scripts/install-dep.sh fernflower"
        return 1
    fi

    echo "Decompiling with Fernflower..."
    java -jar "$FF_JAR" -dgs=1 -mpm=60 "$ff_input" "$out_dir/sources" 2>/dev/null

    # If output is a JAR, extract it
    if [ -f "$out_dir/sources/$out_dir/sources/"*.jar 2>/dev/null ]; then
        unzip -o "$out_dir/sources/"*.jar -d "$out_dir/sources/" >/dev/null 2>&1
    fi

    echo -e "\033[0;32mFernflower decompilation complete.\033[0m"
}

# Main decompilation
mkdir -p "$OUTPUT"

if [ "$ENGINE" = "both" ]; then
    _decompile_jadx "$INPUT" "$OUTPUT/jadx" "$DEOBF" "$NO_RES"
    _decompile_fernflower "$INPUT" "$OUTPUT/fernflower"
    echo ""
    echo "=== Comparison ==="
    echo "jadx output:      $OUTPUT/jadx/"
    echo "fernflower output: $OUTPUT/fernflower/"
    # Count files
    if [ -d "$OUTPUT/jadx/sources" ]; then
        JADX_COUNT=$(find "$OUTPUT/jadx/sources" -name "*.java" | wc -l)
        echo "jadx Java files:      $JADX_COUNT"
    fi
    if [ -d "$OUTPUT/fernflower/sources" ]; then
        FF_COUNT=$(find "$OUTPUT/fernflower/sources" -name "*.java" | wc -l)
        echo "fernflower Java files: $FF_COUNT"
    fi
elif [ "$ENGINE" = "fernflower" ]; then
    _decompile_fernflower "$INPUT" "$OUTPUT"
else
    _decompile_jadx "$INPUT" "$OUTPUT" "$DEOBF" "$NO_RES"

    # Check for split/bundled APK detection
    JAVA_COUNT=$(find "$OUTPUT/sources" -name "*.java" 2>/dev/null | wc -l)
    INNER_APKS=$(find "$OUTPUT/resources" -name "*.apk" 2>/dev/null | wc -l)
    if [ "$JAVA_COUNT" -le 10 ] && [ "$INNER_APKS" -gt 0 ]; then
        echo ""
        echo -e "\033[1;33mPossible split/bundled APK detected.\033[0m"
        echo "Found $JAVA_COUNT Java files and $INNER_APKS inner APK(s)."
        echo "Re-decompiling base.apk..."
        BASE_APK=$(find "$OUTPUT/resources" -name "base.apk" | head -1)
        if [ -n "$BASE_APK" ]; then
            _decompile_jadx "$BASE_APK" "$OUTPUT/base" "$DEOBF" "$NO_RES"
        fi
    fi
fi

echo ""
echo "=== Decompilation complete ==="
echo "Output: $OUTPUT/"
