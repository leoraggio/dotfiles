require("toggleterm").setup{
  size = 25,
  open_mapping = [[<c-\>]],
  start_in_insert = true,
  direction = 'horizontal',
  close_on_exit = true
}

-- Open lazygit
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
