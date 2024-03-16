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


## Important notes

- live_grep needs fd and ripgrep installed
  - links:
    - https://github.com/sharkdp/fd?tab=readme-ov-file#installation
    - https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
   
- to install missing languages in treesitter, run TSInstall <language-name>. Javascript might need it.
