return {
  "mfussenegger/nvim-dap-python",
  config = function()
    local function get_python_path()
      local venv = vim.fn.getcwd() .. "/.venv/bin/python"
      if vim.fn.filereadable(venv) == 1 then
        return venv
      end
      return "python"
    end

    require("dap-python").setup(get_python_path())
    -- require("dap-python").setup("uv")

    local dap = require("dap")
    table.insert(dap.configurations.python, {
      type = "python",
      request = "launch",
      name = "FastAPI",
      module = "uvicorn",
      args = { "main:app", "--reload" },
      cwd = vim.fn.getcwd(),
    })
  end,
}
