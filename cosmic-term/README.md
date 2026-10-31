# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Dark** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (dark) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Sorbet**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Sorbet. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays mint ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3`.

The ANSI slots follow the rice: `red` is rose ![#FF9FBC](https://placehold.co/12x12/ff9fbc/ff9fbc.png) `#FF9FBC`, the one colour
kept for what is wrong; `green` is lime ![#BAF7B5](https://placehold.co/12x12/baf7b5/baf7b5.png) `#BAF7B5`; `yellow` is lemon
![#FFF6C3](https://placehold.co/12x12/fff6c3/fff6c3.png) `#FFF6C3`; `blue` is the mint accent ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3`, so nala's `Updated:` and
`Downloaded:` labels sit in the rice's own colour next to the lime
`No Change:`; `magenta` is peach ![#FFC79B](https://placehold.co/12x12/ffc79b/ffc79b.png) `#FFC79B`, the warm colour numbers and
warnings take; `cyan` is smoke ![#8ED9CF](https://placehold.co/12x12/8ed9cf/8ed9cf.png) `#8ED9CF`; `white` is
![#F3CEFF](https://placehold.co/12x12/f3ceff/f3ceff.png) `#F3CEFF`. Directories are not affected: `LS_COLORS` in `zsh/sorbet.zsh` colours
them in truecolor.

## Which one

Milk ![#FFF6FF](https://placehold.co/12x12/fff6ff/fff6ff.png) `#FFF6FF` is the default. The others move through Sorbet's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Sorbet Smoke | ![#8A8D97](https://placehold.co/12x12/8a8d97/8a8d97.png) `#8A8D97` | 6.1:1 | muted text, the dim text colour |
| Sorbet Lavender | ![#DFBAFF](https://placehold.co/12x12/dfbaff/dfbaff.png) `#DFBAFF` | 12.1:1 | directories (`LS_COLORS`), types |
| Sorbet Lime | ![#BAF7B5](https://placehold.co/12x12/baf7b5/baf7b5.png) `#BAF7B5` | 16.3:1 | strings, success, the `green` slot |
| Sorbet Mint | ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3` | 17.7:1 | the accent, the cursor and the `blue` slot |
| Sorbet Pearl | ![#D9D4E0](https://placehold.co/12x12/d9d4e0/d9d4e0.png) `#D9D4E0` | 13.8:1 | a neutral a step from plain text |
| **Sorbet** (default) | ![#FFF6FF](https://placehold.co/12x12/fff6ff/fff6ff.png) `#FFF6FF` | 19.0:1 | the desktop text colour |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: directories in Sorbet Lavender, for example, look like plain text.
Rose errors and peach numbers stand out more against the dimmer
schemes than against milk.

**Bold:** `bright_foreground` (![#FFFFFF](https://placehold.co/12x12/ffffff/ffffff.png) `#FFFFFF`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the theme background ![#05080A](https://placehold.co/12x12/05080a/05080a.png) `#05080A`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the
wallpaper, so text looks a little softer and contrast a little lower.

## Dark

**Sorbet** · `Sorbet-term.ron` · milk ![#FFF6FF](https://placehold.co/12x12/fff6ff/fff6ff.png) `#FFF6FF`, 19.0:1. The default.

![Sorbet](../assets/cosmic-term/Sorbet-term.png)

**Sorbet Smoke** · `Sorbet-term-smoke.ron` · ![#8A8D97](https://placehold.co/12x12/8a8d97/8a8d97.png) `#8A8D97`, 6.1:1. Muted text, the dim text colour.

![Sorbet Smoke](../assets/cosmic-term/Sorbet-term-smoke.png)

**Sorbet Lavender** · `Sorbet-term-lavender.ron` · ![#DFBAFF](https://placehold.co/12x12/dfbaff/dfbaff.png) `#DFBAFF`, 12.1:1. Directories (`LS_COLORS`), types.

![Sorbet Lavender](../assets/cosmic-term/Sorbet-term-lavender.png)

**Sorbet Lime** · `Sorbet-term-lime.ron` · ![#BAF7B5](https://placehold.co/12x12/baf7b5/baf7b5.png) `#BAF7B5`, 16.3:1. Strings, success, the `green` slot.

![Sorbet Lime](../assets/cosmic-term/Sorbet-term-lime.png)

**Sorbet Mint** · `Sorbet-term-mint.ron` · ![#B2FFF3](https://placehold.co/12x12/b2fff3/b2fff3.png) `#B2FFF3`, 17.7:1. The accent, the cursor and the `blue` slot.

![Sorbet Mint](../assets/cosmic-term/Sorbet-term-mint.png)

**Sorbet Pearl** · `Sorbet-term-pearl.ron` · ![#D9D4E0](https://placehold.co/12x12/d9d4e0/d9d4e0.png) `#D9D4E0`, 13.8:1. A neutral a step from plain text.

![Sorbet Pearl](../assets/cosmic-term/Sorbet-term-pearl.png)

Contrast is plain text on the theme background, WCAG 2.
