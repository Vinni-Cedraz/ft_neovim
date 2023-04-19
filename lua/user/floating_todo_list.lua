local M = {}

function M.open_floating_todo_list()
  local buf = vim.api.nvim_create_buf(false, true)
  local width = vim.api.nvim_get_option("columns")
  local height = vim.api.nvim_get_option("lines")
  local win_height = math.ceil(height * 0.8 - 4)
  local win_width = math.ceil(width * 0.8)
  local row = math.ceil((height - win_height) / 2 - 1)
  local col = math.ceil((width - win_width) / 2)

  local opts = {
    style = "minimal",
    relative = "editor",
    width = win_width,
    height = win_height,
    row = row,
    col = col,
    border = "rounded",
  }

  local win = vim.api.nvim_open_win(buf, true, opts)
  vim.api.nvim_win_set_option(win, "cursorline", true)

  vim.api.nvim_buf_set_option(buf, "modifiable", true)
  vim.cmd(":edit to_do_list.org")
  vim.api.nvim_buf_set_option(0, "modifiable", true)
end

return M
