-- ~/.config/nvim/lua/plugins/linting.lua
return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters = opts.linters or {}
      opts.linters.markdownlint = {
        args = { "--disable", "MD013", "MD033", "MD041", "--" },
      }
      return opts
    end,
  },
}
