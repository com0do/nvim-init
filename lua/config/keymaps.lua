-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "Q", ":qa<cr>", { desc = "exit editor" })

-- Move to window using the <ctrl> hjkl keys
map("n", "<A-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<A-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<A-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<A-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
map("n", "<A-H>", "<C-w>H", { desc = "move window left", remap = true })
map("n", "<A-J>", "<C-w>J", { desc = "move window down", remap = true })
map("n", "<A-K>", "<C-w>K", { desc = "move window up", remap = true })
map("n", "<A-L>", "<C-w>L", { desc = "move window right", remap = true })
map("n", "<A-o>", "<C-w>o", { desc = "close other windows", remap = true })
map("n", "<A-=>", "<C-w>=", { desc = "split half windows", remap = true })
map("n", "<A-v>", "<C-w>v", { desc = "split window", remap = true })
map("n", "<A-V>", "<C-w>V", { desc = "window something", remap = true })

map("n", "<A-1>", ":tabn 1<cr>", { desc = "Go to tab 1" })
map("n", "<A-2>", ":tabn 2<cr>", { desc = "Go to tab 1" })
map("n", "<A-3>", ":tabn 3<cr>", { desc = "Go to tab 1" })
map("n", "<A-4>", ":tabn 4<cr>", { desc = "Go to tab 1" })
map("n", "<A-5>", ":tabn 5<cr>", { desc = "Go to tab 1" })

-- Resize window using <ctrl> arrow keys
map("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

map("n", "<M-t>", ":vert term<cr>", { desc = "open terminal right" })
map("i", "<M-t>", "<esc>:vert term<cr>", { desc = "open terminal right" })
map("n", "<M-T>", ":tab term<cr>", { desc = "open terminal tab" })
map("i", "<M-T>", "<esc>:tab term<cr>", { desc = "open terminal tab" })
map("n", "<M-s>", ":w<cr>", { desc = "save" })

-- Resize window using <ctrl> arrow keys
map("t", "<M-H>", [[<C-\><C-n><C-w>h]], { desc = "swith left in terminal mode" })
map("t", "<M-L>", [[<C-\><C-n><C-w>l]], { desc = "swith right in terminal mode", silent = true })
map("t", "<M-J>", [[<C-\><C-n><C-w>j]], { desc = "swith up in terminal mode" })
map("t", "<M-K>", [[<C-\><C-n><C-w>k]], { desc = "switch below in terminal mode" })
map("t", "<M-q>", [[<C-\><C-n>]], { desc = "switch terminal --> normal" })

-- Move Lines
map("n", "<C-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<C-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<C-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<C-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.cmd("startinsert")
  end,
})
