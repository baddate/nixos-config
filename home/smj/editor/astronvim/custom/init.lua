return {
  colorscheme = "catppuccin",

  options = {
    opt = {
      relativenumber = true, -- Show relative numberline
      signcolumn = "auto", -- Show sign column when used only
      spell = false,      -- Spell checking
      swapfile = false,   -- Swapfile
      title = true,       -- Set the title of window to `filename [+=-] (path) - NVIM`
      -- The percentage of 'columns' to use for the title
      -- When the title is longer, only the end of the path name is shown.
      titlelen = 20,
    },
  },

  plugins = {
    "AstroNvim/astrocommunity",
    -- colorscheme
    { import = "astrocommunity.colorscheme.catppuccin" },
    {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = function(_, opts)
        opts.flavour = "macchiato"
        opts.transparent_background = true -- setting the background color.
      end,
    },
    -- Motion
    { import = "astrocommunity.motion.mini-surround" },
    -- https://github.com/echasnovski/mini.ai
    { import = "astrocommunity.motion.mini-ai" },
    { import = "astrocommunity.motion.flash-nvim" },
    -- diable toggleterm.nvim, zellij's terminal is far better than neovim's one
    -- { "akinsho/toggleterm.nvim",                                   enabled = false },
    { "folke/flash.nvim",                                          vscode = false },
    -- Highly experimental plugin that completely replaces
    -- the UI for messages, cmdline and the popupmenu.
    { import = "astrocommunity.utility.noice-nvim" },

    { import = "astrocommunity.media.vim-wakatime" },
    { import = "astrocommunity.motion.leap-nvim" },
    { import = "astrocommunity.motion.flit-nvim" },
    { import = "astrocommunity.scrolling.nvim-scrollbar" },
    { import = "astrocommunity.editing-support.todo-comments-nvim" },

    {
      "0x00-ketsu/autosave.nvim",
      -- lazy-loading on events
      event = { "InsertLeave", "TextChanged" },
      opts = function(_, opts)
        opts.prompt_style = "notify" -- notify or stdout
      end,
    },
  },
}