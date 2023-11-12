return {
  {
    "telescope.nvim",
    keys = {
      { "<leader>/", false },
      { "<leader><leader>", false },
      { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find word under cursor" },
      {
        "<leader>fw",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Find words",
      },
      {
        "<leader>fW",
        function()
          require("telescope.builtin").live_grep({
            additional_args = function(args)
              return vim.list_extend(args, { "--hidden", "--no-ignore" })
            end,
          })
        end,
        desc = "Find words in all files",
      },
    },
    opts = {
      defaults = {
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = { prompt_position = "top", preview_width = 0.75 },
        },
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
      },
    },
  },
}
