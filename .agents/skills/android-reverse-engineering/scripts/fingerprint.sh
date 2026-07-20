#!/usr/bin/env bash
# fingerprint.sh — Phase 0: Fast triage of an APK/XAPK before full decompilation.
# Usage: bash fingerprint.sh <file.apk|file.xapk>
set -euo pipefail

INPUT="${1:-}"
if [ -z "$INPUT" ] || [ ! -f "$INPUT" ]; then
    echo "Usage: $0 <file.apk|file.xapk>"
    echo "Fast triage: detect framework, HTTP stack, obfuscation, native libs."
    exit 1
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}=== Phase 0: Fingerprint ===${NC}"
echo "File: $(basename "$INPUT")"
echo "Size: $(du -h "$INPUT" | cut -f1)"
echo ""

# Create temp dir for extracted DEX scanning
TMPDIR=$(mktemp -d)
trap "rm -rf '$TMPDIR'" EXIT

# Extract DEX strings for scanning
extract_dex_strings() {
    local src="$1"
    # Try to extract DEX files and scan strings
    if [[ "$src" == *.apk ]] || [[ "$src" == *.xapk ]]; then
        local tmp="$TMPDIR/dex_extract"
        mkdir -p "$tmp"
        unzip -o "$src" "classes*.dex" -d "$tmp" 2>/dev/null || true
        local dex_files=$(find "$tmp" -name "classes*.dex" -type f)
        if [ -n "$dex_files" ]; then
            for dex in $dex_files; do
                strings "$dex" 2>/dev/null || true
            done
        fi
    fi
}

STRINGS=$(extract_dex_strings "$INPUT")

# --- Mobile Framework Detection ---
echo -e "${CYAN}Mobile Framework:${NC}"
if echo "$STRINGS" | grep -qi "flutter\|libflutter\.so\|libapp\.so"; then
    echo -e "  ${YELLOW}FLUTTER${NC} (detected: flutter/libflutter.so markers)"
    echo "FRAMEWORK:Flutter"
elif echo "$STRINGS" | grep -qi "reactnative\|com\.facebook\.react\|libreactnativejni"; then
    echo -e "  ${YELLOW}REACT NATIVE${NC} (detected: react-native markers)"
    echo "FRAMEWORK:ReactNative"
elif echo "$STRINGS" | grep -qi "cordova\|capacitor\|org\.apache\.cordova\|ionic"; then
    echo -e "  ${YELLOW}CORDOVA/CAPACITOR${NC}"
    echo "FRAMEWORK:Cordova"
elif echo "$STRINGS" | grep -qi "xamarin\|libxamarin"; then
    echo -e "  ${YELLOW}XAMARIN${NC}"
    echo "FRAMEWORK:Xamarin"
elif echo "$STRINGS" | grep -qi "com\.facebook\.flutter\|FlutterActivity"; then
    echo -e "  ${YELLOW}FLUTTER${NC} (alternative markers)"
    echo "FRAMEWORK:Flutter"
else
    echo -e "  ${GREEN}NATIVE KOTLIN/JAVA${NC} (no cross-platform framework detected)"
    echo "FRAMEWORK:Native"
fi

# --- HTTP Stack Detection ---
echo ""
echo -e "${CYAN}HTTP Stack:${NC}"
HTTP_FOUND=false

if echo "$STRINGS" | grep -qi "retrofit2\.\|@GET\|@POST\|@PUT\|@DELETE"; then
    echo -e "  ${GREEN}Retrofit${NC}"
    HTTP_FOUND=true
fi
if echo "$STRINGS" | grep -qi "okhttp3\.\|okhttp\.OkHttpClient\|Interceptor"; then
    echo -e "  ${GREEN}OkHttp${NC}"
    HTTP_FOUND=true
fi
if echo "$STRINGS" | grep -qi "io\.ktor\.\|HttpClient\|Ktor"; then
    echo -e "  ${GREEN}Ktor${NC}"
    HTTP_FOUND=true
fi
if echo "$STRINGS" | grep -qi "com\.apollographql\.apollo\|ApolloClient"; then
    echo -e "  ${GREEN}Apollo (GraphQL)${NC}"
    HTTP_FOUND=true
fi
if echo "$STRINGS" | grep -qi "Volley\|com\.android\.volley"; then
    echo -e "  ${GREEN}Volley${NC}"
    HTTP_FOUND=true
fi
if ! $HTTP_FOUND; then
    echo -e "  ${YELLOW}No known HTTP stack detected via strings.${NC}"
fi

# --- DI / Serialization ---
echo ""
echo -e "${CYAN}DI / Serialization:${NC}"
if echo "$STRINGS" | grep -qi "dagger\.\|@Module\|@Component\|Hilt"; then
    echo -e "  ${GREEN}Dagger/Hilt${NC}"
fi
if echo "$STRINGS" | grep -qi "org\.koin\.\|Koin"; then
    echo -e "  ${GREEN}Koin${NC}"
fi
if echo "$STRINGS" | grep -qi "kotlinx\.serialization\|@Serializable"; then
    echo -e "  ${GREEN}kotlinx.serialization${NC}"
fi
if echo "$STRINGS" | grep -qi "com\.google\.gson\|Gson"; then
    echo -e "  ${GREEN}Gson${NC}"
fi
if echo "$STRINGS" | grep -qi "com\.squareup\.moshi\|Moshi"; then
    echo -e "  ${GREEN}Moshi${NC}"
fi

# --- Obfuscation Level ---
echo ""
echo -e "${CYAN}Obfuscation:${NC}"
# Check for short single-letter package names at root level
SHORT_PKGS=$(echo "$STRINGS" | grep -oE "^L[a-z]{1,2}/" | sort -u | wc -l)
if [ "$SHORT_PKGS" -gt 20 ]; then
    echo -e "  ${RED}HIGH${NC} (many short-named packages: $SHORT_PKGS)"
    echo "OBFUSCATION:high"
elif [ "$SHORT_PKGS" -gt 5 ]; then
    echo -e "  ${YELLOW}MODERATE${NC} (some short-named packages: $SHORT_PKGS)"
    echo "OBFUSCATION:moderate"
else
    echo -e "  ${GREEN}LOW/NONE${NC} (few or no short-named packages)"
    echo "OBFUSCATION:none"
fi

# --- Kotlin detection ---
if echo "$STRINGS" | grep -qi "kotlin_module\|kotlin/"; then
    echo -e "  ${GREEN}Kotlin detected${NC}"
    echo "KOTLIN:true"
fi
if echo "$STRINGS" | grep -qi "com\.jetbrains\.compose\|Compose"; then
    echo -e "  ${GREEN}Jetpack Compose detected${NC}"
    echo "COMPOSE:true"
fi

# --- Native Libraries ---
echo ""
echo -e "${CYAN}Native Libraries:${NC}"
# Extract from APK (or base.apk inside XAPK)
NATIVE_TMP="$TMPDIR/native"
mkdir -p "$NATIVE_TMP"

if [[ "$INPUT" == *.xapk ]]; then
    unzip -o "$INPUT" "*/lib/*/*.so" -d "$NATIVE_TMP" 2>/dev/null || true
    unzip -o "$INPUT" "base.apk" -d "$NATIVE_TMP" 2>/dev/null || true
    if [ -f "$NATIVE_TMP/base.apk" ]; then
        unzip -o "$NATIVE_TMP/base.apk" "lib/*/*.so" -d "$NATIVE_TMP" 2>/dev/null || true
    fi
else
    unzip -o "$INPUT" "lib/*/*.so" -d "$NATIVE_TMP" 2>/dev/null || true
fi

SO_FILES=$(find "$NATIVE_TMP" -name "*.so" -type f 2>/dev/null)
SO_COUNT=$(echo "$SO_FILES" | grep -c "\.so$" 2>/dev/null || echo "0")

if [ "$SO_COUNT" -gt 0 ]; then
    echo "  Total .so files: $SO_COUNT"
    echo "  Architectures: $(find "$NATIVE_TMP" -type d -name "*.so" -exec dirname {} \; | xargs -I{} basename {} | sort -u | tr '\n' ' ')"
    echo ""
    # Show notable .so files
    echo "$SO_FILES" | while read -r f; do
        BASENAME=$(basename "$f")
        case "$BASENAME" in
            libapp.so|libflutter.so) echo -e "  ${YELLOW}$BASENAME${NC} (Flutter)" ;;
            libreactnativejni.so) echo -e "  ${YELLOW}$BASENAME${NC} (React Native)" ;;
            libxamarin*.so) echo -e "  ${YELLOW}$BASENAME${NC} (Xamarin)" ;;
            libsqlcipher.so) echo -e "  ${YELLOW}$BASENAME${NC} (SQLCipher - encrypted DB)" ;;
            libsentry*.so) echo -e "  ${YELLOW}$BASENAME${NC} (Sentry native crash reporting)" ;;
        esac
    done
else
    echo "  No native libraries found."
fi

# --- Third-party SDKs ---
echo ""
echo -e "${CYAN}Notable SDKs:${NC}"
SDK_FOUND=false
for sdk in "appsflyer" "adjust" "branch" "firebase" "crashlytics" "sentry" "datadog" "stripe" "paypal" "braintree" "onesignal" "intercom" "zendesk" "amplitude" "mixpanel" "segment" "glide" "picasso" "coil" "exoplayer" "media3"; do
    if echo "$STRINGS" | grep -qi "$sdk"; then
        echo -e "  ${GREEN}$sdk${NC}"
        SDK_FOUND=true
    fi
done
if ! $SDK_FOUND; then
    echo "  No notable third-party SDKs detected via strings."
fi

echo ""
echo -e "${CYAN}=== Recommended Next Step ===${NC}"
FRAMEWORK=$(echo "$STRINGS" | grep -o "FRAMEWORK:.*" | head -1 | cut -d: -f2)
case "$FRAMEWORK" in
    Flutter)
        echo "Flutter app detected. jadx decompilation of Java is mostly useless."
        echo "For Flutter reverse engineering, consider:"
        echo "  - blutter (https://github.com/aspect-ux/blutter)"
        echo "  - strings libapp.so (Dart AOT snapshot)"
        echo "  - REFlutter for runtime instrumentation"
        ;;
    ReactNative)
        echo "React Native app detected. Key code is in JavaScript bundles."
        echo "Look for: assets/index.android.bundle (or similar JS bundle in APK assets)"
        ;;
    *)
        echo "Run full decompilation:"
        echo "  bash .agents/skills/android-reverse-engineering/scripts/decompile.sh --deobf $INPUT"
        ;;
esac
