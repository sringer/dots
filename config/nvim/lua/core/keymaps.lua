local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Set Leader to ","
-- keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- Normal --
---- Tree Nav
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>nt", ":NvimTreeToggle<cr>", opts)
---- Treat long lines as break lines
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
---- Map <Space> to search, and Ctrl-<space> to backwards search
keymap("n", "<space>", "/", opts)
keymap("n", "<c-space>", "?", opts)
---- Window Nav
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
---- Resize Windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
---- Tab Nav
keymap("n", "<S-h>", ":tabp<CR>", opts)
keymap("n", "<S-l>", ":tabn<CR>", opts)
keymap("n", "<leader>tn", ":tabnew<CR>", { silent = true })
keymap("n", "<leader>to", ":tabonly<CR>", { silent = true })
keymap("n", "<leader>tc", ":tabclose<CR>", { silent = true })
keymap("n", "<leader>tm", ":tabmove<CR>", { silent = true })
keymap("n", "<leader>te", ':tabedit <c-r>=expand("%:p:h")<CR>/', { silent = true })
---- Move Text
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
---- Search Nav
keymap("n", "<leader>n", ":cn<CR>", { silent = true })
keymap("n", "<leader>p", ":cp<CR>", { silent = true })
---- Spelling
keymap("n", "<leader>ss", ":setlocal spell!<CR>", { silent = true })
keymap("n", "<leader>sn", "]s", { silent = true })
keymap("n", "<leader>sp", "[s", { silent = true })
keymap("n", "<leader>sa", "zg", { silent = true })
keymap("n", "<leader>s?", "z=", { silent = true })
---- Clipboard
keymap("n", "<leader>pp", ":setlocal paste!<CR>", { silent = true })
---- Saving
keymap("n", "<leader>w", ":w!<CR>", { silent = true })
---- Results Window
--keymap("n", "<leader>l", ":call QuickfixToggle()<CR>", opts)
---- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent = true })
keymap("n", "<C-f>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { silent = true })

-- Visual --
---- Stay in indent when shifting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
---- Move Text
keymap("v", "<A-j", ":m .+1<CR>==", opts)
keymap("v", "<A-k", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
---- Move Text
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
