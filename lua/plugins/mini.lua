return {
  "echasnovski/mini.comment",
  opts = {
    mappings = {
      -- Toggle comment (like `gcip` - comment inner paragraph) for both
      -- Normal and Visual modes
      comment = "<leader>/",

      -- Toggle comment on current line
      comment_line = "<leader>/",

      -- Toggle comment on visual selection
      comment_visual = "<leader>/",

      -- Define 'comment' textobject (like `dgc` - delete whole comment block)
      textobject = "gc",
    },
  },
}
