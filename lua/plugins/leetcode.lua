-- from https://github.com/kawre/leetcode.nvim
-- This plugin provides a Neovim interface for LeetCode, allowing users to solve problems directly within the editor.
-- following config is copy from the plugin's documentation with lazy plugin manager
return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
  dependencies = {
    -- include a picker of your choice, see picker section for more details
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- configuration goes here
    ---@type string
    arg = "leetcode.nvim",

    ---@type lc.lang
    lang = "python",

    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = true, ---@type boolean
      translate_problems = true, ---@type boolean
    },

    ---@type lc.storage
    storage = {
      home = vim.fn.stdpath "data" .. "/leetcode",
      cache = vim.fn.stdpath "cache" .. "/leetcode",
    },

    ---@type table<string, boolean>
    plugins = {
      non_standalone = false,
    },

    ---@type boolean
    logging = true,

    injector = {}, ---@type table<lc.lang, lc.inject>

    cache = {
      update_interval = 60 * 60 * 24 * 7, ---@type integer 7 days
    },

    editor = {
      reset_previous_code = true, ---@type boolean
      fold_imports = true, ---@type boolean
    },

    console = {
      open_on_runcode = true, ---@type boolean

      dir = "row", ---@type lc.direction

      size = { ---@type lc.size
        width = "90%",
        height = "75%",
      },

      result = {
        size = "60%", ---@type lc.size
      },

      testcase = {
        virt_text = true, ---@type boolean

        size = "40%", ---@type lc.size
      },
    },

    description = {
      position = "left", ---@type lc.position

      width = "40%", ---@type lc.size

      show_stats = true, ---@type boolean
    },

    ---@type lc.picker
    picker = { provider = nil },

    hooks = {
      ---@type fun()[]
      ["enter"] = {},

      ---@type fun(question: lc.ui.Question)[]
      ["question_enter"] = {},

      ---@type fun()[]
      ["leave"] = {},
    },

    keys = {
      toggle = { "q" }, ---@type string|string[]
      confirm = { "<CR>" }, ---@type string|string[]

      reset_testcases = "r", ---@type string
      use_testcase = "U", ---@type string
      focus_testcases = "H", ---@type string
      focus_result = "L", ---@type string
    },

    ---@type lc.highlights
    theme = {},

    ---@type boolean
    image_support = false,
  },
}
