<p align="center">
  <img src="public/logo.png" alt="Sugarplum Logo" width="140"/>
</p>

<h1 align="center">sugarplum.nvim</h1>

<p align="center">
  Deep indigo. Neon bloom.
</p>

---

## Preview

<p align="center">
  <img src="public/screenshot.png" alt="Sugarplum Preview" width="800"/>
</p>

---

## About

Sugarplum is a dark Neovim colorscheme built for clarity, contrast, and long coding sessions.

It blends a deep indigo base with neon purple, teal, and cyan accents to create a focused, modern editing experience.

---

## Features

- Minimal, distraction-free design
- Balanced contrast for readability
- LSP and UI highlight support
- Lightweight and fast
- Easy to customize

---

## Installation

Install with your preferred plugin manager.

### lazy.nvim / LazyVim

```lua
{
  "laz4rd/sugarplum.nvim",
  config = function()
    require("sugarplum").setup()
    vim.cmd.colorscheme("sugarplum")
  end,
}
```

---

## Usage

```vim
:colorscheme sugarplum
```

or in Lua:

```lua
vim.cmd.colorscheme("sugarplum")
```

---

## Palette

| Role        | Color |
|------------|------|
| Background | `#111147` |
| Foreground | `#db7ddd` |
| Accent     | `#53b397` |
| Selection  | `#5ca8dc` |

---

## Inspiration

- https://github.com/tiagovla/tokyodark.nvim

---

## License

MIT © Brijraj Singh Bhati
