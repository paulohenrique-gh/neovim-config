# My Neovim Configuration

## Neovim Installation

Official link: https://github.com/neovim/neovim/releases/tag/stable

[Video guide](https://www.youtube.com/watch?v=cBvVCq-q5nw)

## Setting up `init.lua`

If there is any current `init.lua` file, back it up before proceding

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

```bash
git clone git@github.com:paulohenrique-gh/neovim-config.git ~/.config/nvim
```

## Current custom keybindings

- space: leader

- ctrl+n: `:Neotree filesystem reveal left<CR>`

Opens Neotree on the left side of the screen

- ctrl+p:

Opens up Telescope for finding files in the project

- space fg:

live_grep for searching term in project files

- shift+k:

shows information about the symbol under the cursor on a floating window

- space ca:

code actions for when lsp flags some error, cursor needs to be on the symbol with the error

- space w:

same as ctrl+w

- space gf:

format file

- ctrl + h/j/k/l

window navigation

- space bf

floating buffers list

- space fs

telescope for sessions

- ctrl + y ,

confirm emmet
tutorial: https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL

### vim-test

- leader >

test nearest

- leader > 

test file

- leader a 

test suite

- leader l

test last

- leader k

test visit

### Nvim-surround

https://github.com/kylechui/nvim-surround
https://github.com/tpope/vim-surround/blob/master/doc/surround.txt`:h nvim-surround.usage`

### Incremental Selection

init_selection = "<CR>",
node_incremental = "<TAB>",
scope_incremental = "<CR>",
node_decremental = "<S-TAB>",

## Important notes

- live_grep needs fd and ripgrep installed
  - links:
    - https://github.com/sharkdp/fd?tab=readme-ov-file#installation
    - https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
- to install missing languages in treesitter, run TSInstall <language-name>. Javascript might need it.

- `:h lua.lsp.buf` shows information about buf modeule in lua_lsp, maybe something like that can be done for other languages as well: lookup help for the lsp to search for functions and configure it in the corresponding lua plugin file like in lsp-config.lua

- Video to help setting up lsp: https://www.youtube.com/watch?v=S-xzYgTLVJE

- Other videos: setup vim-test, tmuxifier
https://www.youtube.com/watch?v=_YaI2vDbk0o
