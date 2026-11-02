# Sorbet

> Pitch, milk and mint, pastels on black, with rose kept for what is wrong. Sorbet at midnight.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background ![#05080A](https://placehold.co/12x12/05080a/05080a.png) `#05080A`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | ![#FFF6FF](https://placehold.co/12x12/fff6ff/fff6ff.png) `#FFF6FF` | 19.0:1 |
| Mint, accent | ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` | 17.7:1 |
| Peach, warning | ![#FFC79B](https://placehold.co/12x12/ffc79b/ffc79b.png) `#FFC79B` | 13.3:1 |
| Rose, error | ![#FF9FBC](https://placehold.co/12x12/ff9fbc/ff9fbc.png) `#FF9FBC` | 10.5:1 |
| Lime, success | ![#BAF7B5](https://placehold.co/12x12/baf7b5/baf7b5.png) `#BAF7B5` | 16.3:1 |
| Lemon, symlinks | ![#FFF6C3](https://placehold.co/12x12/fff6c3/fff6c3.png) `#FFF6C3` | 18.4:1 |
| Lavender, directories | ![#DFBAFF](https://placehold.co/12x12/dfbaff/dfbaff.png) `#DFBAFF` | 12.1:1 |
| Muted | ![#8A8D97](https://placehold.co/12x12/8a8d97/8a8d97.png) `#8A8D97` | 6.1:1 |

Containers sit one step away from the background at ![#121019](https://placehold.co/12x12/121019/121019.png) `#121019`, which is
what frosted glass blurs into.

## Where the colours go

```mermaid
flowchart LR
    P[Sorbet palette] --> D[COSMIC desktop<br/>Sorbet.ron, Dark slot]
    P --> T[COSMIC Terminal<br/>Sorbet]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>built-in Dark + userChrome]
```

## Setup, in order

- [x] Import `cosmic/Sorbet.ron` into Appearance, **Dark** slot
- [x] Import `cosmic-term/Sorbet-term.ron`, pick **Sorbet** for the profile
- [x] `./icons/install.sh` for the **Cosmic-Sorbet** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-Sorbet-Mint
- [x] Wallpaper: `backgrounds/sorbet-anime.png`
- [ ] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: Low,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 7),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
