# My Neovim Configuration

## Neovim Installation

Official link: https://github.com/neovim/neovim/releases/tag/stable

[Video guide](https://www.youtube.com/watch?v=cBvVCq-q5nw)

## Setting up `init.lua`

If you already have an existing init.lua file, it's recommended to back it up before proceeding. You can do this with the following commands:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

```bash
git clone git@github.com:paulohenrique-gh/neovim-config.git ~/.config/nvim
```

## Current custom keybindings

- space: leader

- \<leader>\<tab>: Alternate between current and previous buffer

- \<leader>nn: Opens Neotree on the left side of the screen

- \<leader>nc: Close Neotree

- \<leader>\<leader>: Fuzzy find files with Telescope

- \<leader>fg: Telescope live_grep

- \<leader>fb: Telescope buffers

- shift + k: Shows information about the symbol under the cursor in a floating window.

- \<leader>ca: Offers code actions when the LSP flags some error. The cursor needs to be on the symbol with the error.

- \<leader>w: Same as ctrl + w

- \<leader>gf: Auto format

- ctrl + h/j/k/l window navigation

- \<leader>bf: Floating buffers list.

- \<space>fs: Telescope for sessions.

- ctrl + y: Confirms emmet
tutorial: https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL

- \<leader>t: Test nearest

- \<leader>T: Test file

- \<leader>a: Test suite 

- \<leader>l: Test last

- \<leader>k: Test visit

### Splitjoin

- gS: Split one line into multiple lines, useful for arrays / hashes

- gJ: Join a block into a single line

test visit

### Nvim-surround

https://github.com/kylechui/nvim-surround
https://github.com/tpope/vim-surround/blob/master/doc/surround.txt`:h nvim-surround.usage`

### Incremental Selection

init_selection = "\<CR>",
node_incremental = "\<TAB>",
scope_incremental = "\<CR>",
node_decremental = "\<S-TAB>",

## Important notes

- live_grep needs fd and ripgrep installed
  - links:
    - https://github.com/sharkdp/fd?tab=readme-ov-file#installation
    - https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
- To install missing languages in treesitter, run TSInstall \<language-name>. Javascript might need it.

- `:h lua.lsp.buf` shows information about buf module in lua_lsp, maybe something like that can be done for other languages as well: lookup help for the lsp to search for functions and configure it in the corresponding lua plugin file like in `lsp-config.lua`

- Video to help setting up lsp: https://www.youtube.com/watch?v=S-xzYgTLVJE

- Other videos: setup vim-test, tmuxifier
https://www.youtube.com/watch?v=_YaI2vDbk0o
