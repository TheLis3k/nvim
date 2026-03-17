# Personal Neovim Configuration (Arch Linux / Hyprland)

A modern, Lua-based Neovim configuration optimized for PHP, JavaScript/TypeScript, and Python development. Built to run on Neovim Nightly (v0.12+) with full Treesitter and LSP v2 support.

## ✨ Features
- **Plugin Manager:** [lazy.nvim](https://github.com/folke/lazy.nvim)
- **LSP Management:** [mason.nvim](https://github.com/williamboman/mason.nvim) and native LSP config
- **Completion:** [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) with [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- **Fuzzy Finder:** [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **Syntax Highlighting:** [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (ABI 15+)
- **UI:** [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) with transparency and [lualine](https://github.com/nvim-lualine/lualine.nvim)

## 🛠️ Prerequisites & Dependencies

This configuration is designed for **Arch Linux** and requires specific system-level tools to function correctly.

### 1. Neovim Nightly (0.12+)
Required for the latest Treesitter and LSP architecture.
```bash
yay -S neovim-git
```

### 2. System Dependencies
Install these via `pacman` to support Telescope, Clipboard, and Mason:
```bash
sudo pacman -S git wl-clipboard ripgrep fd luarocks composer python-pip jdk-openjdk npm
```
- **wl-clipboard:** Essential for clipboard synchronization on Wayland/Hyprland.
- **ripgrep / fd:** Powers Telescope's fast searching.
- **luarocks / composer / npm:** Required by Mason to install and update language servers.

### 3. Language Provider Support
Install Neovim bridge for Node.js and Python:
```bash
# Node.js provider
sudo npm install -g neovim

# Python provider
sudo pacman -S python-pynvim
```

## 🚀 Installation

1. Backup your current configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```
2. Clone this repository:
```bash
git clone <your-repo-url> ~/.config/nvim
```
3. Launch Neovim:
```bash
nvim
```
*Lazy.nvim will automatically install all plugins on the first start.*

4. Install/Update Treesitter parsers:
```vim
:TSUpdate
```

## ⌨️ Keymaps

The **Leader** key is set to `Space`.

### General & Navigation
| Key | Action |
| :--- | :--- |
| `<leader>cd` | Open File Explorer (Netrw) |
| `y` / `Y` | Copy (Yank) to system clipboard |
| `p` / `P` | Paste from system clipboard |

### Search (Telescope)
| Key | Action |
| :--- | :--- |
| `<leader>ff` | Find Files |
| `<leader>fg` | Live Grep (Search text in project) |
| `<leader>fb` | List Buffers |
| `<leader>fh` | Help Tags |

### LSP (Intelligent Coding)
| Key | Action |
| :--- | :--- |
| `gd` | Go to Definition |
| `K` | Show documentation (Hover) |
| `<leader>vca` | View Code Actions |

## 📦 Plugins Documentation
- **Completion:** Press `<Tab>` to navigate suggestions or jump through snippets.
- **Help:** Press `<leader>` and wait for **Which-Key** to show you available commands.

## 📝 Troubleshooting
Run `:checkhealth` to verify your environment. Pay attention to the **Mason** and **Provider** sections.
