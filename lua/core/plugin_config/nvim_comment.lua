require("nvim_comment").setup({
  comment_empty = false,
  create_mappings = true,
  line_mapping = "gcc",
  operator_mapping = "gc",
  prefer_block_comment = false,
  marker_padding = true,
  left_align = false,
  ignore = "^$",
  mappings = {
    ["<leader>c"] = "gcc",
  },
})
