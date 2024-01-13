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

    -- clipboard manager
    {
      "gbprod/yanky.nvim",
      opts = function()
        local mapping = require("yanky.telescope.mapping")
        local mappings = mapping.get_defaults()
        mappings.i["<c-p>"] = nil
        return {
          highlight = { timer = 200 },
          picker = {
            telescope = {
              use_default_mappings = false,
              mappings = mappings,
            },
          },
        }
      end,
      keys = {
        {
          "y",
          "<Plug>(YankyYank)",
          mode = { "n", "x" },
          desc = "Yank text",
        },
        {
          "p",
          "<Plug>(YankyPutAfter)",
          mode = { "n", "x" },
          desc = "Put yanked text after cursor",
        },
        {
          "P",
          "<Plug>(YankyPutBefore)",
          mode = { "n", "x" },
          desc = "Put yanked text before cursor",
        },
        {
          "gp",
          "<Plug>(YankyGPutAfter)",
          mode = { "n", "x" },
          desc = "Put yanked text after selection",
        },
        {
          "gP",
          "<Plug>(YankyGPutBefore)",
          mode = { "n", "x" },
          desc = "Put yanked text before selection",
        },
        { "[y", "<Plug>(YankyCycleForward)",              desc = "Cycle forward through yank history" },
        { "]y", "<Plug>(YankyCycleBackward)",             desc = "Cycle backward through yank history" },
        { "]p", "<Plug>(YankyPutIndentAfterLinewise)",    desc = "Put indented after cursor (linewise)" },
        { "[p", "<Plug>(YankyPutIndentBeforeLinewise)",   desc = "Put indented before cursor (linewise)" },
        { "]P", "<Plug>(YankyPutIndentAfterLinewise)",    desc = "Put indented after cursor (linewise)" },
        { "[P", "<Plug>(YankyPutIndentBeforeLinewise)",   desc = "Put indented before cursor (linewise)" },
        { ">p", "<Plug>(YankyPutIndentAfterShiftRight)",  desc = "Put and indent right" },
        { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)",   desc = "Put and indent left" },
        { ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", desc = "Put before and indent right" },
        { "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)",  desc = "Put before and indent left" },
        { "=p", "<Plug>(YankyPutAfterFilter)",            desc = "Put after applying a filter" },
        { "=P", "<Plug>(YankyPutBeforeFilter)",           desc = "Put before applying a filter" },
      },
    },
  },
}