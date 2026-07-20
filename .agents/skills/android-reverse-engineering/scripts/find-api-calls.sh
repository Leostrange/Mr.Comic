#!/usr/bin/env bash
# find-api-calls.sh — Find HTTP API calls in decompiled sources.
# Usage: bash find-api-calls.sh <sources-dir> [OPTIONS]
#   --retrofit    Search only Retrofit annotations
#   --urls        Search only hardcoded URLs
#   --auth        Search only authentication patterns
#   --paths       Extract endpoint-shaped path literals
#   --ktor        Search only Ktor calls
#   --apollo      Search only Apollo/GraphQL
set -euo pipefail

SOURCES_DIR="${1:-}"
shift || true

if [ -z "$SOURCES_DIR" ] || [ ! -d "$SOURCES_DIR" ]; then
    echo "Usage: $0 <decompiled-sources-dir> [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --retrofit    Search Retrofit annotations"
    echo "  --urls        Search hardcoded URLs"
    echo "  --auth        Search authentication patterns"
    echo "  --paths       Extract endpoint-shaped path literals"
    echo "  --ktor        Search Ktor client calls"
    echo "  --apollo      Search Apollo/GraphQL operations"
    echo "  (no option)   Full scan (all of the above)"
    exit 1
fi

MODES=()
while [[ $# -gt 0 ]]; do
    case "$1" in
        --retrofit) MODES+=("retrofit"); shift ;;
        --urls) MODES+=("urls"); shift ;;
        --auth) MODES+=("auth"); shift ;;
        --paths) MODES+=("paths"); shift ;;
        --ktor) MODES+=("ktor"); shift ;;
        --apollo) MODES+=("apollo"); shift ;;
        *) shift ;;
    esac
done

# Default: all modes
if [ ${#MODES[@]} -eq 0 ]; then
    MODES=("retrofit" "urls" "auth" "paths" "ktor" "apollo")
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DENYLIST="$SCRIPT_DIR/../references/third_party_hosts.txt"

echo "=== API Extraction: $(basename "$SOURCES_DIR") ==="
echo ""

# --- Retrofit ---
if [[ " ${MODES[@]} " =~ " retrofit " ]]; then
    echo -e "\033[0;36m--- Retrofit ---\033[0m"
    echo ""

    # HTTP method annotations
    echo "HTTP Method Annotations:"
    grep -rn '@GET\|@POST\|@PUT\|@DELETE\|@PATCH\|@HEAD' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -100
    echo ""

    # Base URL
    echo "Base URL Configuration:"
    grep -rn 'baseUrl\|\.baseUrl(' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -20
    echo ""

    # Interceptors
    echo "Interceptors (auth headers often live here):"
    grep -rn 'Interceptor\|addInterceptor\|addNetworkInterceptor' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -30
    echo ""
fi

# --- URLs ---
if [[ " ${MODES[@]} " =~ " urls " ]]; then
    echo -e "\033[0;36m--- Hardcoded URLs ---\033[0m"
    echo ""

    # HTTP/HTTPS URLs
    echo "All HTTP/HTTPS URLs:"
    grep -rhoP '"https?://[^"]*"' "$SOURCES_DIR" --include="*.java" 2>/dev/null | sort -u | head -200
    echo ""

    # Base URL constants
    echo "Base URL Constants:"
    grep -rni 'BASE_URL\|API_URL\|SERVER_URL\|ENDPOINT\|API_BASE' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -50
    echo ""

    # First-party vs third-party bucketing
    if [ -f "$DENYLIST" ]; then
        echo "=== First-Party vs Third-Party Hosts ==="
        echo ""
        ALL_HOSTS=$(grep -rhoP '"https?://([^/"]+)' "$SOURCES_DIR" --include="*.java" 2>/dev/null | \
            sed 's|"https\?://||' | sort -u)

        echo "First-party hosts (app's own backend):"
        echo "$ALL_HOSTS" | while read -r host; do
            if ! grep -qE "$(grep -v '^#' "$DENYLIST" | grep -v '^$' | tr '\n' '|')" <<< "$host" 2>/dev/null; then
                echo "  $host"
            fi
        done
        echo ""

        echo "Third-party hosts (SDKs/services - filtered):"
        echo "$ALL_HOSTS" | while read -r host; do
            if grep -qE "$(grep -v '^#' "$DENYLIST" | grep -v '^$' | tr '\n' '|')" <<< "$host" 2>/dev/null; then
                echo "  $host"
            fi
        done
        echo ""
    fi
fi

# --- Auth ---
if [[ " ${MODES[@]} " =~ " auth " ]]; then
    echo -e "\033[0;36m--- Authentication Patterns ---\033[0m"
    echo ""

    echo "Bearer / Token patterns:"
    grep -rni 'bearer\|api[_-]*key\|api[_-]*secret\|auth[_-]*token\|access[_-]*token\|client[_-]*secret\|Authorization' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -50
    echo ""

    echo "Login/Auth related strings:"
    grep -rn '"login\|"auth\|"register\|"signin\|"signup\|"oauth\|"token\|"refresh\|"logout\|"session' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -30
    echo ""
fi

# --- Paths (obfuscation-resistant) ---
if [[ " ${MODES[@]} " =~ " paths " ]]; then
    echo -e "\033[0;36m--- Endpoint-Shaped Path Literals ---\033[0m"
    echo ""

    # All quoted strings shaped like API paths
    grep -rhoE '"(/[A-Za-z0-9_{}.\-]+(/[A-Za-z0-9_{}.\-]+)+/?|(api|v[0-9]+|graphql|users?|account|auth|sso|oauth|profile|cart|basket|order|product|inventory|search|category|address|location|delivery|payment|invoice|favo[u]?rites?)(/[A-Za-z0-9_{}.\-]+)+/?)"' "$SOURCES_DIR" --include="*.java" 2>/dev/null | \
        grep -Ev '^"(image|video|audio|text|application|content)/|^"/(proc|sys|dev|tmp|etc)/' | \
        sort -u | head -300
    echo ""
fi

# --- Ktor ---
if [[ " ${MODES[@]} " =~ " ktor " ]]; then
    echo -e "\033[0;36m--- Ktor Client Calls ---\033[0m"
    echo ""

    echo "Ktor HTTP calls:"
    grep -rn '\.\(get\|post\|put\|delete\|patch\|head\|request\)\s*[<(]' "$SOURCES_DIR" --include="*.java" 2>/dev/null | grep -i "ktor\|httpclient\|client" | head -50
    echo ""

    echo "Ktor auth plugin:"
    grep -rn 'bearer\|BearerTokens\|loadTokens\|refreshTokens\|defaultRequest\|URLBuilder\|URLProtocol' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -20
    echo ""
fi

# --- Apollo ---
if [[ " ${MODES[@]} " =~ " apollo " ]]; then
    echo -e "\033[0;36m--- Apollo / GraphQL ---\033[0m"
    echo ""

    echo "Apollo client setup:"
    grep -rn 'ApolloClient\|\.serverUrl(\|HttpNetworkTransport' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -10
    echo ""

    echo "GraphQL operations:"
    grep -rn '\.query(\s*[A-Z]\|\.mutation(\s*[A-Z]\|\.subscription(\s*[A-Z]' "$SOURCES_DIR" --include="*.java" 2>/dev/null | head -30
    echo ""
fi

echo "=== API Extraction Complete ==="
