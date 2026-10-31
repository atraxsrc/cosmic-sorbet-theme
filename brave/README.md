# Brave - Sorbet

A Chromium theme matching the COSMIC Sorbet rice, made from the Firefox theme's
colours. Brave, Chrome, Chromium and Edge all take it. No Chrome Web Store
and no Google account: it is loaded straight from this folder.

## Install

1. `brave://extensions` → turn on **Developer mode** (top right)
2. **Load unpacked** → pick `brave/theme`

It applies at once and survives restarts. Brave keeps reading the folder, so
leave the clone where it is; after editing `manifest.json`, press the reload
arrow on the theme's card.

To undo: `brave://settings/appearance` → Theme → **Reset to default**.

A theme replaces GTK / Classic mode in Appearance, and picking GTK or Classic
removes the theme.

### Packed instead

```bash
brave-browser --pack-extension="$PWD/brave/theme"
```

That writes `brave/theme.crx` and `brave/theme.pem` next to the folder (both
are git-ignored). On Linux you can drag the `.crx` onto `brave://extensions`.
The `.pem` is the signing key for later versions, keep it private. Windows and
macOS refuse `.crx` files from outside the store, so use Load unpacked there.

## Palette

Same roles as the Firefox theme: icons and inactive tabs take lime, the
active tab text takes the mint.

| Hex       | Where in the theme                               |
|-----------|--------------------------------------------------|
| ![#05080A](https://placehold.co/12x12/05080a/05080a.png) `#05080A` | Frame, inactive tabs, new tab page (incognito too) |
| ![#121019](https://placehold.co/12x12/121019/121019.png) `#121019` | Toolbar and active tab                           |
| ![#28213A](https://placehold.co/12x12/28213a/28213a.png) `#28213A` | Address bar                                      |
| ![#FFF6FF](https://placehold.co/12x12/fff6ff/fff6ff.png) `#FFF6FF` | Bookmark bar text, address bar text, new tab text |
| ![#BAF7B5](https://placehold.co/12x12/baf7b5/baf7b5.png) `#BAF7B5` | Toolbar icons, inactive tab text                 |
| ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` | Active tab text, new tab links                   |

Every text colour clears WCAG AA (4.5:1) on its background; the lowest is
the mint active tab text at 16.6:1 on the toolbar.

Chromium themes take `[R, G, B]` lists, not hex, so `manifest.json` spells
the colours out as numbers.

## Notes

- **Colours only.** A Chromium theme has no keys for menus, the focus ring,
  the address bar dropdown or text selection; Chromium works those out from
  the frame and toolbar colours. There is no `userChrome.css` equivalent.
- **Brave's own panels** (Shields, sidebar, wallet, settings) follow Brave's
  dark mode, not the theme. Set `brave://settings/appearance` → Brave colors
  → **Dark**.
- **Brave's new tab page** is Brave's own and may ignore `ntp_background`.
  Pick a background on the page itself: **Customize** → Background image.
- **Web pages** are not themed. That is `brave://flags/#enable-force-dark`
  or a Dark Reader style extension.
- Built against **Brave 1.98 (Chromium 155)**.

## License

MIT, same as the rest of the repo.
