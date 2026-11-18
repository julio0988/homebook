# Homebook

A personal household app built in Flutter. It does three things: log the day's expenses, keep the to-do and shopping lists, and show how the month is going.

## Code rules

- **No comments in code.** Don't write `//` or `///` comments or file headers. Put explanations in the chat reply.
- Never hard-code a color. Use `ThemeColor` (light) and `ThemeColorDark` (dark) from `lib/styles/colors.dart`. Constants are lowerCamelCase (`ThemeColor.primaryInk`).
- Run `flutter analyze` and make it pass before calling work done.

## Commands

- `flutter pub get`: install dependencies
- `flutter analyze`: lint and type-check (`flutter_lints`)
- `flutter run`: launch the app
- `flutter test`: run tests (there is no `test/` folder yet)

## Design system

The source of truth is the Homebook design system artifact: https://claude.ai/artifact/UKLoCVPvTtqxe9BWK1HXdL

- `project/tokens.json` holds every token, `project/README.md` is the brand book, and `project/flutter.md` has ready-made Dart for the tokens, the theme and custom widgets. That Dart expects `lib/theme/`; this repo uses `lib/styles/`.
- Change a token value in the design system first, then update `lib/styles/colors.dart` to match. Token `primary-ink` becomes `ThemeColor.primaryInk`, and `cat-pine-soft` becomes `ThemeColor.catPineSoft`.
- Feel: late-afternoon autumn light on paper. It's warm, soft and unhurried, with translucent glass over a warm wash. Hierarchy comes from color, space and one weight step, never from size.

### Voice

- Use sentence case everywhere. No exclamation marks and no emoji in the UI.
- Start actions with a verb: "Add expense", "New list", "Save", "Undo". Never "OK" or "Submit".
- Format money with `NumberFormat.currency(locale: 'pt_BR', symbol: r'R$')`, which needs `intl`. Lists always show cents. Expenses have no sign; only a refund takes one: "+ R$ 59,90" in `success`.
- Dates read "Today", "Yesterday", then "Mon, 14 Oct". Times are 24-hour: "14:20".
- A comparison names its period: "8% less than September", never just "−8%".
- An empty state gets one sentence plus one action: "No expenses today." with "Add expense".

### Color

- Backdrop: `canvas`, with a radial `glowApricot` from the top-leading corner and a `glowHoney` from the bottom-trailing corner. Only display titles and `ink`/`inkMuted` text sit directly on it; everything else goes on glass.
- Text: `ink` for primary text, `inkMuted` for secondary text and placeholders, `inkFaint` for disabled text only.
- `primary` (pumpkin) fills one action per screen, plus the checked checkbox and the budget meter. Anything written on it uses `onPrimary` (espresso), never white.
- `primaryInk` is for accent text and icons: links, the selected nav label, the focused field border and the focus ring. `primarySoft` is the tonal fill.
- `success`, `warning` and `danger` (each with a `…Soft` fill) always appear with an icon and a word, and are never used for categories.
- Categories have nine hues in a fixed order: pumpkin, pine, fig, honey, plum, olive, dusk, rosehip, other. Never reorder or skip one. `cat<Hue>` is for chart marks only, `cat<Hue>Soft` is the icon well, and `cat<Hue>Ink` is the glyph or text in that hue.
- Dark is the evening twin, not an inversion. `onPrimary` stays espresso.

Material `ColorScheme` mapping:

| Token | Material role |
| --- | --- |
| `primary` / `onPrimary` | `primary` / `onPrimary` |
| `primarySoft` | `primaryContainer`, `secondaryContainer` |
| `primaryInk` | `secondary`, `onPrimaryContainer`, `onSecondaryContainer` |
| `canvas` | `surface`, `scaffoldBackgroundColor` |
| `ink` / `inkMuted` | `onSurface` / `onSurfaceVariant` |
| `glass` / `glassStrong` / `field` | `surfaceContainer…` lowest to default / high / highest |
| `outline` / `line` | `outline` / `outlineVariant` |
| `danger` / `dangerSoft` | `error` / `errorContainer` |
| `scrim` | `scrim` |

### Glass and depth

- There are three layers: the backdrop, then `glass` for cards and grouped lists, then `glassStrong` for chrome over content (nav pill, sheets, dialogs, menus, the selected segment).
- Every glass surface has a 1px `glassBorder`. Never stack glass on `glassStrong`, and nest at most one glass level inside a card.
- Use `BackdropFilter` only on the nav bar or a pinned top bar (blur 24) and on sheets and dialogs (blur 32, over `scrim`). Cards in lists never blur.
- Paint glass shadows outside the shape. A plain `BoxShadow` under a translucent fill shows through it.
- Every route paints its own backdrop under a transparent `Scaffold`, so page transitions never show one page through another.

### Type

- Fraunces (weight 500) is only for `display` (24/30, the screen title, once per screen) and `title` (17/22, card, sheet and dialog titles). Never set a number in Fraunces.
- Figtree is for everything else: `hero` 34/40, `amount` 15/20 (right-aligned, tabular figures), `body-lg` 15/22, `body` 14/20, `label` 14/20, `label-sm` 12/16 and `caption` 12/16.
- Use weight 400 for reading text and 500 for labels, amounts and the hero. Nothing is bolder than 500.
- Fonts (Fraunces, Figtree, Phosphor, PhosphorFill) are in the design system's `fonts/`. Bundle them under `assets/fonts/`; never fetch them at runtime. They aren't bundled yet.

### Layout and shape

- The grid is 4px: spacing steps are 4, 8, 12, 16, 20, 24, 32 and 40.
- Screen gutter 20, card padding 16, rows 12 × 16, cards 12 apart, sections 32 apart, labels 8 above their controls.
- Use one column on phones. On tablets, center the column at 560px.
- Controls are drawn small (buttons and fields 40, chips 28, add button 48) but keep a 48px tap target. Leave `materialTapTargetSize` padded.
- Everything you press is a pill or a circle. Radii: 12 for fields and tiles, 20 for cards, 28 for sheets, dialogs and the hero card. Chart bars get 4 on their data end.
- `line` hairlines separate rows inside a card. Cards are separated by space, never by lines. `outline` is only for the open checkbox ring and the text-field border.

### Motion and states

- State changes take 160ms with ease-out. Sheets and page transitions take 240ms with emphasized deceleration. A checked list item waits 600ms before moving to Done.
- Pressed controls scale to 0.97. With reduced motion on, drop the scale and slide and keep the fades.
- Disabled: `ink` at 12% for fills and 38% for labels. Never a faded pumpkin.
- Focus ring: a 2px `canvas` gap, then 2px of `primaryInk` that follows the radius.

### Icons

- Use Phosphor from the bundled fonts, not the `phosphor_flutter` package: its 2.1.0 subclasses `IconData` and no longer compiles on Flutter 3.44+. Interface icons are 20, 16 inside chips and buttons.
- Use the regular weight; the fill weight is only for the selected nav destination. An icon takes the color of the text beside it.
- No emoji, illustrations or mascots. There is no logo yet: set the name in Fraunces `display` in `ink`.

### Charts

- Lead a report with one `hero` figure and a delta that names its period. Spending down is `success` with a down trend icon; spending up is `danger` with an up trend icon.
- Budget meter: `primary`, then `warning` from 85%, then `danger` past 100%, over that hue's `…Soft` track, always captioned in words.
- Never use a pie or donut, a dual axis, color by value, a number on every column, or a tooltip as the only way to read a value.
