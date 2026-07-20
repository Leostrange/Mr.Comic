#!/usr/bin/env bash
# check-deps.sh — Verify that required and optional tools are installed.
set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

REQUIRED_OK=true
EXIT_CODE=0

check_required() {
    local name="$1"
    local cmd="$2"
    if command -v "$cmd" &>/dev/null; then
        echo -e "${GREEN}OK${NC}  $name ($(command -v "$cmd"))"
        echo "INSTALL_REQUIRED:$name:OK"
    else
        echo -e "${RED}MISSING${NC}  $name (required)"
        echo "INSTALL_REQUIRED:$name:MISSING"
        REQUIRED_OK=false
        EXIT_CODE=1
    fi
}

check_optional() {
    local name="$1"
    local cmd="$2"
    if command -v "$cmd" &>/dev/null; then
        echo -e "${GREEN}OK${NC}  $name ($(command -v "$cmd"))"
        echo "INSTALL_OPTIONAL:$name:OK"
    else
        echo -e "${YELLOW}MISSING${NC}  $name (optional)"
        echo "INSTALL_OPTIONAL:$name:MISSING"
    fi
}

echo "=== Android Reverse Engineering: Dependency Check ==="
echo ""

# Required
check_required "java" "java"
check_required "jadx" "jadx"

# Optional
check_optional "fernflower/vineflower" "fernflower"
check_optional "dex2jar" "d2j-dex2jar"
check_optional "apktool" "apktool"
check_optional "adb" "adb"

# Check Java version
echo ""
if command -v java &>/dev/null; then
    JAVA_VER=$(java -version 2>&1 | head -1 | sed 's/.*"\([0-9]*\)\..*/\1/')
    if [ "$JAVA_VER" -ge 17 ] 2>/dev/null; then
        echo -e "${GREEN}OK${NC}  Java version >= 17 (found: $JAVA_VER)"
    else
        echo -e "${YELLOW}WARN${NC}  Java version < 17 (found: $JAVA_VER). jadx requires 17+."
        echo "INSTALL_REQUIRED:java:VERSION_LOW"
        EXIT_CODE=1
    fi
fi

# Check Fernflower JAR path
if [ -n "${FERNFLOWER_JAR_PATH:-}" ] && [ -f "$FERNFLOWER_JAR_PATH" ]; then
    echo -e "${GREEN}OK${NC}  FERNFLOWER_JAR_PATH=$FERNFLOWER_JAR_PATH"
elif [ -n "${FERNFLOWER_JAR_PATH:-}" ]; then
    echo -e "${YELLOW}WARN${NC}  FERNFLOWER_JAR_PATH is set but file not found: $FERNFLOWER_JAR_PATH"
fi

echo ""
if [ "$REQUIRED_OK" = true ]; then
    echo -e "${GREEN}All required dependencies are installed.${NC}"
else
    echo -e "${RED}Some required dependencies are missing.${NC}"
    echo "Run: bash .agents/skills/android-reverse-engineering/scripts/install-dep.sh <dep-name>"
fi

exit $EXIT_CODE
