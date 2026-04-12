#!/bin/bash
#
# Nightfall Blue - KDE Plasma Global Theme Installer
#
# Installs the color scheme, Plasma desktop theme, Aurorae window decoration,
# and look-and-feel (global theme) package.
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_NAME="NightfallBlue"

# KDE installation directories
COLOR_SCHEME_DIR="$HOME/.local/share/color-schemes"
PLASMA_THEME_DIR="$HOME/.local/share/plasma/desktoptheme"
AURORAE_DIR="$HOME/.local/share/aurorae/themes"
LOOKANDFEEL_DIR="$HOME/.local/share/plasma/look-and-feel"

install_theme() {
    echo "Installing Nightfall Blue theme..."
    echo ""

    # Color scheme
    echo "[1/4] Installing color scheme..."
    mkdir -p "$COLOR_SCHEME_DIR"
    cp "$SCRIPT_DIR/color-scheme/NightfallBlue.colors" "$COLOR_SCHEME_DIR/"
    echo "  -> $COLOR_SCHEME_DIR/NightfallBlue.colors"

    # Plasma desktop theme
    echo "[2/4] Installing Plasma desktop theme..."
    mkdir -p "$PLASMA_THEME_DIR"
    rm -rf "$PLASMA_THEME_DIR/$THEME_NAME"
    cp -r "$SCRIPT_DIR/plasma/desktoptheme/$THEME_NAME" "$PLASMA_THEME_DIR/"
    echo "  -> $PLASMA_THEME_DIR/$THEME_NAME/"

    # Aurorae window decoration
    echo "[3/4] Installing Aurorae window decoration..."
    mkdir -p "$AURORAE_DIR"
    rm -rf "$AURORAE_DIR/$THEME_NAME"
    cp -r "$SCRIPT_DIR/aurorae/$THEME_NAME" "$AURORAE_DIR/"
    echo "  -> $AURORAE_DIR/$THEME_NAME/"

    # Look-and-feel (global theme)
    echo "[4/4] Installing global theme (look-and-feel)..."
    mkdir -p "$LOOKANDFEEL_DIR"
    rm -rf "$LOOKANDFEEL_DIR/com.github.rich.NightfallBlue"
    cp -r "$SCRIPT_DIR/look-and-feel/com.github.rich.NightfallBlue" "$LOOKANDFEEL_DIR/"
    echo "  -> $LOOKANDFEEL_DIR/com.github.rich.NightfallBlue/"

    echo ""
    echo "Installation complete!"
    echo ""
    echo "To apply the theme:"
    echo "  1. Open System Settings -> Appearance -> Global Theme"
    echo "  2. Select 'Nightfall Blue'"
    echo "  3. Click 'Apply'"
    echo ""
    echo "Or apply individual components:"
    echo "  - Colors:            System Settings -> Appearance -> Colors -> 'Nightfall Blue'"
    echo "  - Plasma Style:      System Settings -> Appearance -> Plasma Style -> 'Nightfall Blue'"
    echo "  - Window Decorations: System Settings -> Appearance -> Window Decorations -> 'Nightfall Blue'"
    echo ""
    echo "For panel blur/transparency, ensure:"
    echo "  - System Settings -> Workspace Behavior -> Desktop Effects -> 'Blur' is enabled"
    echo "  - Panel opacity can be adjusted by right-clicking the panel -> 'Edit Panel' -> 'More Options' -> 'Opacity'"
}

uninstall_theme() {
    echo "Uninstalling Nightfall Blue theme..."
    echo ""

    [ -f "$COLOR_SCHEME_DIR/NightfallBlue.colors" ] && rm -f "$COLOR_SCHEME_DIR/NightfallBlue.colors" && echo "  Removed color scheme"
    [ -d "$PLASMA_THEME_DIR/$THEME_NAME" ] && rm -rf "$PLASMA_THEME_DIR/$THEME_NAME" && echo "  Removed Plasma desktop theme"
    [ -d "$AURORAE_DIR/$THEME_NAME" ] && rm -rf "$AURORAE_DIR/$THEME_NAME" && echo "  Removed Aurorae window decoration"
    [ -d "$LOOKANDFEEL_DIR/com.github.rich.NightfallBlue" ] && rm -rf "$LOOKANDFEEL_DIR/com.github.rich.NightfallBlue" && echo "  Removed global theme"

    echo ""
    echo "Uninstall complete. You may need to select a different theme in System Settings."
}

case "${1:-install}" in
    install)
        install_theme
        ;;
    uninstall|remove)
        uninstall_theme
        ;;
    *)
        echo "Usage: $0 [install|uninstall]"
        echo ""
        echo "  install    Install the Nightfall Blue theme (default)"
        echo "  uninstall  Remove the Nightfall Blue theme"
        exit 1
        ;;
esac
