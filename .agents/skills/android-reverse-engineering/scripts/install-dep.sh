#!/usr/bin/env bash
# install-dep.sh — Install a missing dependency.
# Usage: bash install-deps.sh <java|jadx|fernflower|dex2jar|apktool|adb>
set -euo pipefail

DEP="${1:-}"
if [ -z "$DEP" ]; then
    echo "Usage: $0 <java|jadx|fernflower|dex2jar|apktool|adb>"
    exit 1
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

LOCAL_BIN="$HOME/.local/bin"
LOCAL_SHARE="$HOME/.local/share"
mkdir -p "$LOCAL_BIN" "$LOCAL_SHARE"

# Detect package manager
detect_pkg_manager() {
    if command -v apt-get &>/dev/null; then echo "apt"
    elif command -v dnf &>/dev/null; then echo "dnf"
    elif command -v pacman &>/dev/null; then echo "pacman"
    elif command -v brew &>/dev/null; then echo "brew"
    else echo "none"
    fi
}

PKG_MGR=$(detect_pkg_manager)

install_with_sudo() {
    echo "Attempting sudo install..."
    if sudo -n true 2>/dev/null; then
        return 0
    else
        echo -e "${YELLOW}sudo is required but not available or password needed.${NC}"
        echo "Please run the following command manually:"
        echo "  $1"
        exit 2
    fi
}

case "$DEP" in
    java)
        echo "Installing Java JDK 17..."
        case "$PKG_MGR" in
            apt) install_with_sudo "sudo apt update && sudo apt install -y openjdk-17-jdk" && sudo apt update && sudo apt install -y openjdk-17-jdk ;;
            dnf) install_with_sudo "sudo dnf install -y java-17-openjdk-devel" && sudo dnf install -y java-17-openjdk-devel ;;
            pacman) install_with_sudo "sudo pacman -S --noconfirm jdk17-openjdk" && sudo pacman -S --noconfirm jdk17-openjdk ;;
            brew) brew install openjdk@17 ;;
            none) echo -e "${RED}No package manager found.${NC} Install Java 17 from https://adoptium.net/"; exit 1 ;;
        esac
        ;;
    jadx)
        echo "Installing jadx..."
        if [ "$PKG_MGR" = "brew" ]; then
            brew install jadx
        else
            echo "Downloading jadx from GitHub Releases..."
            JADX_URL=$(curl -s https://api.github.com/repos/skylot/jadx/releases/latest | grep -o '"browser_download_url": "[^"]*jadx-[0-9.]*\.zip"' | head -1 | cut -d'"' -f4)
            if [ -z "$JADX_URL" ]; then
                echo -e "${RED}Failed to get jadx download URL.${NC}"
                exit 1
            fi
            curl -L "$JADX_URL" -o "$LOCAL_SHARE/jadx.zip"
            unzip -o "$LOCAL_SHARE/jadx.zip" -d "$LOCAL_SHARE/jadx" >/dev/null
            ln -sf "$LOCAL_SHARE/jadx/bin/jadx" "$LOCAL_BIN/jadx"
            ln -sf "$LOCAL_SHARE/jadx/bin/jadx-gui" "$LOCAL_BIN/jadx-gui"
            chmod +x "$LOCAL_SHARE/jadx/bin/jadx"
            echo -e "${GREEN}jadx installed to $LOCAL_BIN/jadx${NC}"
            echo "Add to PATH: export PATH=\"$LOCAL_BIN:\$PATH\""
        fi
        ;;
    fernflower|vineflower)
        echo "Installing Vineflower..."
        VF_URL=$(curl -s https://api.github.com/repos/Vineflower/vineflower/releases/latest | grep -o '"browser_download_url": "[^"]*vineflower-[0-9.]*\.jar"' | head -1 | cut -d'"' -f4)
        if [ -z "$VF_URL" ]; then
            echo -e "${RED}Failed to get Vineflower download URL.${NC}"
            exit 1
        fi
        curl -L "$VF_URL" -o "$LOCAL_SHARE/vineflower.jar"
        export FERNFLOWER_JAR_PATH="$LOCAL_SHARE/vineflower.jar"
        echo -e "${GREEN}Vineflower installed to $LOCAL_SHARE/vineflower.jar${NC}"
        echo "Add to your shell profile: export FERNFLOWER_JAR_PATH=\"$LOCAL_SHARE/vineflower.jar\""
        ;;
    dex2jar)
        echo "Installing dex2jar..."
        if [ "$PKG_MGR" = "brew" ]; then
            brew install dex2jar
        else
            D2J_URL=$(curl -s https://api.github.com/repos/ThexXTURBOXx/dex2jar/releases/latest | grep -o '"browser_download_url": "[^"]*dex-tools[^"]*\.zip"' | head -1 | cut -d'"' -f4)
            if [ -z "$D2J_URL" ]; then
                echo -e "${RED}Failed to get dex2jar download URL.${NC}"
                exit 1
            fi
            curl -L "$D2J_URL" -o "$LOCAL_SHARE/dex2jar.zip"
            unzip -o "$LOCAL_SHARE/dex2jar.zip" -d "$LOCAL_SHARE/dex2jar" >/dev/null
            D2J_BIN=$(find "$LOCAL_SHARE/dex2jar" -name "d2j-dex2jar.sh" -type f | head -1)
            if [ -n "$D2J_BIN" ]; then
                chmod +x "$D2J_BIN"
                ln -sf "$D2J_BIN" "$LOCAL_BIN/d2j-dex2jar"
                echo -e "${GREEN}dex2jar installed to $LOCAL_BIN/d2j-dex2jar${NC}"
                echo "Add to PATH: export PATH=\"$LOCAL_BIN:\$PATH\""
            else
                echo -e "${YELLOW}Extracted but d2j-dex2jar not found. Check $LOCAL_SHARE/dex2jar/${NC}"
            fi
        fi
        ;;
    apktool)
        echo "Installing apktool..."
        case "$PKG_MGR" in
            apt) install_with_sudo "sudo apt install -y apktool" && sudo apt install -y apktool ;;
            brew) brew install apktool ;;
            none)
                echo "Downloading apktool from GitHub..."
                APKTOOL_URL=$(curl -s https://api.github.com/repos/iBotPeaches/Apktool/releases/latest | grep -o '"browser_download_url": "[^"]*apktool_[0-9.]*\.jar"' | head -1 | cut -d'"' -f4)
                curl -L "$APKTOOL_URL" -o "$LOCAL_SHARE/apktool.jar"
                cat > "$LOCAL_BIN/apktool" << 'APKTOOL_EOF'
#!/bin/bash
java -jar "$HOME/.local/share/apktool.jar" "$@"
APKTOOL_EOF
                chmod +x "$LOCAL_BIN/apktool"
                echo -e "${GREEN}apktool installed to $LOCAL_BIN/apktool${NC}"
                ;;
        esac
        ;;
    adb)
        echo "Installing adb..."
        case "$PKG_MGR" in
            apt) install_with_sudo "sudo apt install -y adb" && sudo apt install -y adb ;;
            dnf) install_with_sudo "sudo dnf install -y android-tools" && sudo dnf install -y android-tools ;;
            brew) brew install android-platform-tools ;;
            none) echo -e "${RED}No package manager found.${NC} Install from https://developer.android.com/tools/releases/platform-tools"; exit 1 ;;
        esac
        ;;
    *)
        echo -e "${RED}Unknown dependency: $DEP${NC}"
        echo "Available: java, jadx, fernflower, dex2jar, apktool, adb"
        exit 1
        ;;
esac

echo -e "${GREEN}Done.${NC}"
