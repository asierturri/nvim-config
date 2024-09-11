# L1ZiT's Neovim configuration

Welcome to my Neovim configuration!

<pre>
📂nvim/
├─ 📂lua/
│  ├─ 📂l1zit/
│     ├─ 📂config/
│     │  ├─ 🗒️lazy.lua
│     │  ├─ 🗒️maps.lua
│     │  ├─ 🗒️settings.lua
│     ├─ 📂plugins/
│ 
├─ 🗒️init.lua
</pre>

## Plugin Manager

I use [lazy.nvim](https://github.com/folke/lazy.nvim) as my plugin manager for Neovim. It simplifies plugin installation and management.

## Colorscheme

I'm currently using the [gruvbox](https://github.com/ellisonleao/gruvbox.nvim) colorscheme.

## Plugins

Here are all the plugins currently in use:

| Plugin     | Usage                                         | Priority rating |
|------------|-------------------------------------------------------|-----------------|
| [cmp](https://github.com/hrsh7th/nvim-cmp)        | Auto-completion engine for code and text             | 10/10           |
| [mason](https://github.com/williamboman/mason.nvim) | LSP (Language Server Protocol) management            | 10/10           |
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, buffers, and more             | 9/10            |
| [autopairs](https://github.com/windwp/nvim-autopairs)  | Automatically inserts matching brackets and quotes    | 8/10            |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Enhanced syntax highlighting and code parsing         | 7/10            |
| [formatter](https://github.com/mhartington/formatter.nvim) | Code formatting for various programming languages    | 6/10            |
| [lualine](https://github.com/nvim-lualine/lualine.nvim)    | Status line customization for Neovim                  | 5/10            |
| [toggleterm](https://github.com/akinsho/toggleterm.nvim) | Toggle terminal integration within Neovim             | 5/10            |
| [colorizer](https://github.com/norcalli/nvim-colorizer.lua) | Highlights color codes in files                      | 3/10            |
| [neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)    | File explorer with a tree structure                   | 3/10            |

---

To use this configuration, simply clone this repository to your local nvim config directory.
Feel free to explore and customize this configuration to suit your needs!
If you have any suggestions or questions about my Neovim setup, feel free to open an issue or contact me directly.

May your code become blazingly fast! 🚀
