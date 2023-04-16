vim.g.mapleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.opt.background = "dark" -- set this to dark or light

vim.opt.cursorline = true   -- highlight the current line

vim.keymap.set("n", "<leader>cr", "<cmd>CargoRun --release<CR>")
vim.keymap.set("n", "<leader>ct", "<cmd>CargoTest<CR>")
vim.keymap.set("n", "<leader>cb", "<cmd>CargoBuild<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>CargoCheck<CR>")

vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>nn", "<C-w><C-v>")

vim.keymap.set("n", "<leader>nh", "<cmd>noh<CR>")

vim.keymap.set("n", "qq", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>qq", "<cmd>q!<CR>")
vim.keymap.set("n", "qa", "<cmd>qa<CR>")

vim.keymap.set("n", "<leader>ca", "<cmd>%y+<CR>")
vim.keymap.set("n", "<leader>da", "<cmd>%d<CR>")

vim.keymap.set("n", "<leader>w", vim.cmd.w)

vim.keymap.set("n", ":", "<cmd>FineCmdline<CR>")

vim.keymap.set("n", "<Tab>", ";")

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.rs", "*.lua", "*.html", "*.js", "*.mjs" },
    callback = vim.lsp.buf.format,
})

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
--
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "<C-j>", "<C-d>zz")

vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>r", ":Rg<CR>")

vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

require('leap').add_default_mappings()
vim.keymap.set("n", "s", function()
    local current_window = vim.fn.win_getid()
    require('leap').leap { target_windows = { current_window } }
end)

require('neoscroll').setup()

vim.g.surround_no_mappings = 1
-- " Just the defaults copied here.
vim.keymap.set("n", "ds", "<Plug>Dsurround")
vim.keymap.set("n", "cs", "<Plug>Csurround")
vim.keymap.set("n", "cS", "<Plug>CSurround")
vim.keymap.set("n", "ys", "<Plug>Ysurround")
vim.keymap.set("n", "yS", "<Plug>YSurround")
vim.keymap.set("n", "yss", "<Plug>Yssurround")
vim.keymap.set("n", "ySs", "<Plug>YSsurround")
vim.keymap.set("n", "ySS", "<Plug>YSsurround")
vim.keymap.set("n", "<leader>t", "<Plug>Ysurround" .. "iw")

-- " The conflicting ones.
vim.keymap.set("n", "gs", "<Plug>VSurround")
vim.keymap.set("v", "gS", "<Plug>VgSurround")

-- vim.keymap.set(
--     "",
--     "<Leader>e",
--     require("lsp_lines").toggle,
--     { desc = "Toggle lsp_lines" }
-- )

vim.keymap.set("n", "<leader>b", "<cmd>Navbuddy<CR>")

local gitignore = require("gitignore")
vim.keymap.set("n", "<leader>gi", gitignore.generate)

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
    { silent = true, noremap = true }
)

vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
    { silent = true, noremap = true }
)

vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
    { silent = true, noremap = true }
)

vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
    { silent = true, noremap = true }
)

vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
    { silent = true, noremap = true }
)

vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
    { silent = true, noremap = true }
)
