return {
  -- {
  --   "lalitmee/cobalt2.nvim",
  --   dependencies = "tjdevries/colorbuddy.nvim",
  --   config = function()
  --     require("colorbuddy").colorscheme("cobalt2")
  --   end,
  -- },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    italic_comments = true,
    hide_fillchars = true,
    terminal_colors = true,
    theme = {
      variant = "default",
      saturation = 1,
    },
    extensions = {
      telescope = true,
      notify = true,
      mini = true,
    },
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        transparent = true,
        styles = {
          comments = { "italic" },
          functions = { "bold" },
          strings = { "italic" },
          types = { "italic" },
          keywords = { "bold" },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        FIX = {
          icon = " ", -- icon used for the sign, and in search results
          color = "error", -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        Q = { icon = "? ", color = "default", alt = { "QUESTION" } },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "hint", alt = { "HINT", "IDEA", "FUTURE" } },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", color = "warning", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
    },
    colors = {
      error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
      warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
      info = { "DiagnosticInfo", "#2563EB" },
      hint = { "DiagnosticHint", "#10B981" },
      default = { "Identifier", "#7C3AED" },
      test = { "Identifier", "#FF00FF" },
    },
  },
}
