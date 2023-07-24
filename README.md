# zim-zoxide

Custom [zim-module](https://github.com/zimfw/zimfw) for [zoxide](https://github.com/ajeetdsouza/zoxide).

## Features

- Implement the pre-compilation of the zoxide initialization script to eliminate recurring eval calls.
- Introduce a CMD+G keybinding for interactive directory selection and automatic navigation.

## Prerequisites

You need to have [zoxide](https://github.com/ajeetdsouza/zoxide) installed.

## Install

Add the following to `~/.zimrc`

```sh
# some configuration above
zmodule omares/zim-zoxide
# some configuration below
```