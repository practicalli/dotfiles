---
icon: lucide/terminal
---

# Terminal App - Kitty

![Kitty logo](https://github.com/practicalli/graphic-design/blob/live/logos/kitty-dark.png?raw=true#gh-dark-mode-only){align=right loading=lazy style="height:150px"}
![Kitty logo](https://github.com/practicalli/graphic-design/blob/live/logos/kitty-light.png?raw=true##gh-light-mode-only){align=right loading=lazy style="height:150px"}


[Kitty](https://sw.kovidgoyal.net/kitty/){target=_blank} is a fast and efficient GPU Terminal Emulator app, excellent for a rich user experience on the command line.

[Nerd fonts](https://www.nerdfonts.com/){target=_blank} are included with Kitty, to support shell prompts and TUI apps and editors, e.g. Neovim.

## Practicalli Customisations

- Catppuccin-Mocha (set via `kitty +kitten themes`)
- `FiraCode Nerd Font` as font family
- cursor trail to visually show jumping cursor (easier to follow)
- tab bar style angled
- disable bell and hide window decorations

### Key mappings

New window splits

- ++ctrl+shift+t++ opens a new tab using the current path
- ++ctrl+shift+enter++ opens horizontal split, 20% the size of original window

Switch window split focus

- ++ctrl+arrow-up++ move cursor to window split above
- ++ctrl+arrow-down++ move cursor to window split down

Resize window splits

- ++ctrl+shift+"j"++ shorter by 3 pixels
- ++ctrl+shift+"k"++ taller by 3 pixels
- ++ctrl+shift+"h"++ narrower
- ++ctrl+shift+"l"++ wider
- ++ctrl+shift+home++ reset all splits to default size
