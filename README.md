# wrap-toggle.nvim

Use a single keybind to toggle between wrapping modes 🎁

<img src="_examples/wrap.gif" width="750">


## Installation

Packer/Lazy/etc:

    use { 'derektata/wrap-toggle.nvim' }

Vim-Plug:

    Plug 'derektata/wrap-toggle.nvim'


## Setup

init.lua

    require("wrap-toggle").setup()

init.vim

    lua <<EOF
    require("wrap-toggle").setup()
    EOF


## Recommended setup

Lua:

    use {
      'derektata/wrap-toggle.nvim',
      config = function()
        require('wrap-toggle').setup()
      end
    }


## Usage

| Binding | Mode   | Description             |
|---------|--------|-------------------------|
| Alt + z | normal | toggle wrap mode on/off |


## Customizing Keybind

Lua:

     require('wrap-toggle').setup({ keybind = "<C-a>" })