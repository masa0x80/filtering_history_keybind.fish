# fzf_history_keybind.fish

[![MIT LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)

## Overview

Keybinding fish-shell plugin to inserting a selected history with fzf.

## Installation

With [fresco]
```
fresco masa0x80/fzf_history_keybind.fish
```

With [fisherman]
```
fisher masa0x80/fzf_history_keybind.fish
```

## Dependencies

- [fzf]

## Usage

To insert the selected history to command line buffer, type ctrl-r (`\cr`).

## Setup

### `FZF_HISTORY_KEYBIND`

`FZF_HISTORY_KEYBIND` is the key binding to insert the selected history with [fzf].
It is defaulted to `\cr` (ctrl-r).

## Bibliography

[fzf]: https://github.com/junegunn/fzf
[fresco]: https://github.com/masa0x80/fresco
[fisherman]: https://github.com/fisherman/fisherman
