return {
  colorscheme = "catppuccin",

  options = {
    opt = {
      relativenumber = true, -- Show relative numberline
      signcolumn = "auto", -- Show sign column when used only
      spell = false,      -- Spell checking
      swapfile = false,   -- Swapfile
      smartindent = false, -- fix https://github.com/ryan4yin/nix-config/issues/4
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
  },
}