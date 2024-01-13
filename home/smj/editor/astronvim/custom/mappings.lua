local utils = require "astronvim.utils"
require("telescope").load_extension("refactoring")
require("telescope").load_extension("yank_history")
require("telescope").load_extension("undo")

return {
  n = {
    -- NeoTree
    ["<F3>"] = {function() require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() }) end, desc = "Toggle NeoTree(cwd)"},

    -- yank_history
    ["<leader>yh"] = { function() require("telescope").extensions.yank_history.yank_history() end, desc = "Preview Yank History" },

    -- undo history
    ["<leader>uh"] = {"<cmd>Telescope undo<cr>", desc="Telescope undo" },
  }
}

