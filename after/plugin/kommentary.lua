local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then
  return
end

treesitter.setup {
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    context_commentstring = {
      enable = true,
      config = {
        javascript = {
          __default = "// %s",
          jsx_element = "{/* %s */}",
          jsx_fragment = "{/* %s */}",
          jsx_attribute = "// %s",
          comment = "// %s"
        }
      }
    }
  }
}
