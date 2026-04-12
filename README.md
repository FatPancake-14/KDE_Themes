# Nightfall Blue

A dark, modern blue global theme for KDE Plasma built around `#161a24`.

## Features

- **Dark blue colour scheme** with `#4a9eff` accent highlights
- **Semi-transparent panel** (`#1e2438` at 70% opacity) with blur support
- **Rounded window corners** via Aurorae decoration with solid bottom border
- **Themed window titlebar** matching the colour scheme
- **Task manager indicators** with rounded highlight backgrounds and proper icon spacing
- **Subtle, muted dividers** throughout
- **Tela icon pack** included

## Components

| Component | Description |
|-----------|-------------|
| Color Scheme | Full NightfallBlue palette for all KDE applications |
| Plasma Style | Panel, widgets, tooltips, dialogs, task indicators |
| Window Decoration | Aurorae-based with rounded corners, no side borders |
| Look-and-Feel | Global theme tying all components together |
| Icons | Tela icon pack |

## Installation

### Quick install

```bash
git clone https://github.com/FatPancake-14/KDE_Themes.git
cd KDE_Themes
./install.sh
```

### Apply the theme

1. Open **System Settings** → **Appearance** → **Global Theme**
2. Select **Nightfall Blue**
3. Click **Apply**

You can also apply individual components separately:

- **Colors**: System Settings → Appearance → Colors → Nightfall Blue
- **Plasma Style**: System Settings → Appearance → Plasma Style → Nightfall Blue
- **Window Decorations**: System Settings → Appearance → Window Decorations → Nightfall Blue

### Enable panel blur

For the semi-transparent panel effect:

1. System Settings → Workspace Behavior → Desktop Effects
2. Enable **Blur**
3. Optionally adjust panel opacity: right-click the panel → Edit Panel → More Options → Opacity

### Uninstall

```bash
./install.sh uninstall
```

## Colour Palette

| Role | Hex | Preview |
|------|-----|---------|
| Base / Window | `#161a24` | ![#161a24](https://placehold.co/20x20/161a24/161a24) |
| View / Content | `#131620` | ![#131620](https://placehold.co/20x20/131620/131620) |
| Header (active) | `#1a1e2c` | ![#1a1e2c](https://placehold.co/20x20/1a1e2c/1a1e2c) |
| Panel | `#1e2438` | ![#1e2438](https://placehold.co/20x20/1e2438/1e2438) |
| Button / Surface | `#232838` | ![#232838](https://placehold.co/20x20/232838/232838) |
| Border / Divider | `#2e3450` | ![#2e3450](https://placehold.co/20x20/2e3450/2e3450) |
| Text | `#c8cdd8` | ![#c8cdd8](https://placehold.co/20x20/c8cdd8/c8cdd8) |
| Accent | `#4a9eff` | ![#4a9eff](https://placehold.co/20x20/4a9eff/4a9eff) |

## Requirements

- KDE Plasma 6
- KWin with Aurorae support

## License

GPL-3.0
