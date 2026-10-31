# Cosmic Sorbet for Cursor

Colour theme for [Cursor](https://cursor.com) from the COSMIC
[Sorbet](https://github.com/atraxsrc/cosmic-sorbet-theme) rice: **Cosmic Sorbet**, dark
only. It is a plain VS Code theme extension, so VS Code and VSCodium take it
too.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-sorbet-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Sorbet**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

Sorbet has no light half, so there is nothing for COSMIC's Dark / Light toggle to
switch to; leave `window.autoDetectColorScheme` off, or pair it with another
rice's light theme in `workbench.preferredLightColorTheme`.

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/sorbet.lua`):

| Role | Sorbet |
|------|----|
| Keywords, tags | ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` |
| Functions, tag attributes | ![#FFF6C3](https://placehold.co/12x12/C9C2B4/C9C2B4.png) `#FFF6C3` |
| Strings | ![#BAF7B5](https://placehold.co/12x12/9FA5A9/9FA5A9.png) `#BAF7B5` |
| Numbers, constants | ![#FFC79B](https://placehold.co/12x12/D87C4A/D87C4A.png) `#FFC79B` |
| Types, classes, modules | ![#DFBAFF](https://placehold.co/12x12/dfbaff/dfbaff.png) `#DFBAFF` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#B572EF](https://placehold.co/12x12/9D7E6F/9D7E6F.png) `#B572EF` |
| Parameters (italic) | ![#A9ACB6](https://placehold.co/12x12/A5AEB4/A5AEB4.png) `#A9ACB6` |
| Operators, punctuation | ![#8A8D97](https://placehold.co/12x12/7F7F7F/7F7F7F.png) `#8A8D97` |
| Comments (italic) | ![#5E616C](https://placehold.co/12x12/565D60/565D60.png) `#5E616C` |
| Accent | ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` |
| Errors, deleted, conflicts | ![#FF9FBC](https://placehold.co/12x12/DE6145/DE6145.png) `#FF9FBC` |

The workbench takes the window colour of the rice's `cosmic/Sorbet.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the mint accent for the
active tab line, buttons, badges and the menu highlight. Button hover is the
lighter mint ![#D1FFF8](https://placehold.co/12x12/d1fff8/d1fff8.png) `#D1FFF8`. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1. Mint ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` is 17.7:1 on the window background and 16.6:1 on the
container colour ![#121019](https://placehold.co/12x12/121019/121019.png) `#121019`, so it stays the same colour everywhere, the
match highlight in the suggest and hover widgets included. Keywords on the
highlighted current line are 15.5:1; comments dip under 3:1 there.
