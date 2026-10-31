# Cosmic Sorbet / Cosmic Sorbet Day for Cursor

Colour themes for [Cursor](https://cursor.com) from the COSMIC
[Sorbet](https://github.com/atraxsrc/cosmic-sorbet-theme) rice and its light half
[Sorbet Day](https://github.com/atraxsrc/cosmic-sorbetday-theme): **Cosmic Sorbet** and **Cosmic Sorbet Day** in one
extension. It is a plain VS Code theme extension, so VS Code and VSCodium
take it too. The same extension ships in both repos.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-sorbet-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Sorbet** or **Cosmic Sorbet Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## Follow COSMIC's Dark / Light toggle

COSMIC tells apps which mode is on through its desktop portal. With these
lines in Cursor's `settings.json` (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> →
**Preferences: Open User Settings (JSON)**), Cursor switches between the two
themes along with the desktop:

```jsonc
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Cosmic Sorbet",
"workbench.preferredLightColorTheme": "Cosmic Sorbet Day"
```

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Sorbet | Sorbet Day |
|------|---|---|
| Keywords, tags | ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` | ![#1C685C](https://placehold.co/12x12/1c685c/1c685c.png) `#1C685C` |
| Functions, tag attributes | ![#FFF6C3](https://placehold.co/12x12/fff6c3/fff6c3.png) `#FFF6C3` | ![#68602C](https://placehold.co/12x12/68602c/68602c.png) `#68602C` |
| Strings | ![#BAF7B5](https://placehold.co/12x12/baf7b5/baf7b5.png) `#BAF7B5` | ![#2E6B29](https://placehold.co/12x12/2e6b29/2e6b29.png) `#2E6B29` |
| Numbers, constants | ![#FFC79B](https://placehold.co/12x12/ffc79b/ffc79b.png) `#FFC79B` | ![#895125](https://placehold.co/12x12/895125/895125.png) `#895125` |
| Types, classes, modules | ![#DFBAFF](https://placehold.co/12x12/dfbaff/dfbaff.png) `#DFBAFF` | ![#684488](https://placehold.co/12x12/684488/684488.png) `#684488` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#B572EF](https://placehold.co/12x12/b572ef/b572ef.png) `#B572EF` | ![#6A28A4](https://placehold.co/12x12/6a28a4/6a28a4.png) `#6A28A4` |
| Parameters (italic) | ![#A9ACB6](https://placehold.co/12x12/a9acb6/a9acb6.png) `#A9ACB6` | ![#625B62](https://placehold.co/12x12/625b62/625b62.png) `#625B62` |
| Operators, punctuation | ![#8A8D97](https://placehold.co/12x12/8a8d97/8a8d97.png) `#8A8D97` | ![#635F63](https://placehold.co/12x12/635f63/635f63.png) `#635F63` |
| Comments (italic) | ![#5E616C](https://placehold.co/12x12/5e616c/5e616c.png) `#5E616C` | ![#959295](https://placehold.co/12x12/959295/959295.png) `#959295` |
| Accent | ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` | ![#1C685C](https://placehold.co/12x12/1c685c/1c685c.png) `#1C685C` |
| Errors, deleted, conflicts | ![#FF9FBC](https://placehold.co/12x12/ff9fbc/ff9fbc.png) `#FF9FBC` | ![#963653](https://placehold.co/12x12/963653/963653.png) `#963653` |

The workbench takes the window colour of the rice's `cosmic/*.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the mint accent for the
active tab line, buttons, badges and the menu highlight. Button hover is a
step away from the accent, ![#D1FFF8](https://placehold.co/12x12/d1fff8/d1fff8.png) `#D1FFF8` in Sorbet and ![#1F4D46](https://placehold.co/12x12/1f4d46/1f4d46.png) `#1F4D46` in Sorbet Day. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1, in both halves.

- **Sorbet**: Mint ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png)
  `#B2FFF3` is 17.7:1 on the window background and 16.6:1 on the container colour
  ![#121019](https://placehold.co/12x12/121019/121019.png) `#121019`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 16.6:1; comments
  dip under 3:1 there.
- **Sorbet Day**: Mint ![#1C685C](https://placehold.co/12x12/1c685c/1c685c.png)
  `#1C685C` is 5.2:1 on the window background and 5.8:1 on the container colour
  ![#F4EEF4](https://placehold.co/12x12/f4eef4/f4eef4.png) `#F4EEF4`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 5.8:1; comments
  dip under 3:1 there.
