# Neovim Config

A modern Neovim configuration with full battery for JavaScript/TypeScript, Python, Lua, C++, Markdown and more...

## Requirements

- Neovim >= 0.9.0 (needs to be built with LuaJIT)
- Git >= 2.19.0 (for partial clones)
- [Nerd Font](https://www.nerdfonts.com/) ***(optional, but needed to display icons)***
- **C** compiler for nvim-treesitter. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - live grep: [ripgrep](https://github.com/BurntSushi/ripgrep)

## Installation

Clone nvim.config:
```bash
git clone https://github.com/yasir-khilji-64/nvim.config ~/.config/nvim
```

Start Neovim
```bash
nvim
```

That's it! Lazy will install all the plugins you have. Use :Lazy to view current plugin status.
