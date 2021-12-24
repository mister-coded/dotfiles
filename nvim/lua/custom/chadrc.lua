-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the strucutre of `core/default_config.lua`,
-- examples of setting relative number & changing theme:
M.options = {
   -- NeoVim/Vim options
   clipboard = "unnamedplus",
   cmdheight = 1,
   ruler = false,
   hidden = false,
   ignorecase = true,
   mapleader = " ",
   mouse = "a",
   number = true,
   -- relative numbers in normal mode tool at the bottom of options.lua
   numberwidth = 2,
   relativenumber = true,
   expandtab = true,
   shiftwidth = 2,
   smartindent = true,
   tabstop = 8, -- Number of spaces that a <Tab> in the file counts for
   timeoutlen = 400,
   -- interval for writing swap file to disk, also used by gitsigns
   updatetime = 250,
   undofile = true, -- keep a permanent undo (across restarts)
   -- NvChad options
   nvChad = {
      copy_cut = true, -- copy cut text ( x key ), visual and normal mode
      copy_del = true, -- copy deleted text ( dd key ), visual and normal mode
      insert_nav = true, -- navigation in insertmode
      window_nav = true,
      theme_toggler = false,
      -- used for updater
      update_url = "https://github.com/NvChad/NvChad",
      update_branch = "main",
   },
}


M.ui = {
  theme = "everforest",
  transparency = false,
}

-- NvChad included plugin options & overrides
M.plugins = {
   status = {
      blankline = true, -- show code scope with symbols
      bufferline = false, -- list open buffers up the top, easy switching too
      colorizer = false, -- color RGB, HEX, CSS, NAME color codes
      comment = true, -- easily (un)comment code, language aware
      dashboard = true, -- NeoVim 'home screen' on open
      esc_insertmode = true, -- map to <ESC> with no lag
      feline = true, -- statusline
      gitsigns = true, -- gitsigns in statusline
      lspsignature = true, -- lsp enhancements
      neoscroll = true, -- smooth scroll
      telescope_media = false, -- media previews within telescope finders
      truezen = false, -- distraction free & minimalist UI mode
      vim_matchup = true, -- % operator enhancements
      cmp = true,
      nvimtree = true
   },
   options = {
        lspconfig = {
      --    path of file containing setups of different lsps (ex : "custom.plugins.lspconfig"), read the docs for more info
         setup_lspconf = "custom.configs.lspconfig",
        },
        statusline = { -- statusline related options
         -- these are filetypes, not pattern matched
         -- shown filetypes will overrule hidden filetypes
         hidden = {
            "help",
            "dashboard",
            -- "NvimTree",
            "terminal",
         },
         shortline = false,
         shown = {},
         -- default, round , slant , block , arrow
         style = "block",
      },

   },
   -- To change the Packer `config` of a plugin that comes with NvChad,
   -- add a table entry below matching the plugin github name
   --              '-' -> '_', remove any '.lua', '.nvim' extensions
   -- this string will be called in a `require`
   --              use "(custom.configs).my_func()" to call a function
   --              use "custom.blankline" to call a file
   default_plugin_config_replace = {},
}

return M
