vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nocompatible")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set hidden")
vim.keymap.set("n", "<C-h>", ":noh <CR>", {})
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "100"

-- Harpoon keybinds --
-- Open harpoon ui
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>ho", ui.toggle_quick_menu, { desc = "open harpoon ui menu" })

-- to add file in the harpoon
vim.keymap.set("n", "<leader>ha", function()
    mark.add_file()
end, { desc = "add current file in the harpoon" })

-- to move to the next file
vim.keymap.set("n", "<leader>hn", function()
    ui.nav_next()
end, { desc = "add current file in the harpoon" })

-- to go to the previous file
vim.keymap.set("n", "<leader>hp", function()
    ui.nav_prev()
end, { desc = "remove the current file from the harpoon" })

-- Quickly jump to harpooned files
vim.keymap.set("n", "<leader>1", function()
    ui.nav_file(1)
end, { desc = "quickly jump to harpooned file" })

vim.keymap.set("n", "<leader>2", function()
    ui.nav_file(2)
end)

vim.keymap.set("n", "<leader>3", function()
    ui.nav_file(3)
end)

vim.keymap.set("n", "<leader>4", function()
    ui.nav_file(4)
end)

vim.keymap.set("n", "<leader>5", function()
    ui.nav_file(5)
end)

-- Map Oil to <leader>e
vim.keymap.set("n", "<leader>o", function()
    require("oil").toggle_float()
end)

vim.keymap.set("n", "<space>", "<nop>")

-- to manage buffers (to delete buffer by using leader bk)
vim.keymap.set("n", "<leader>bk", ":bdelete % <CR>")

-- for formatting every time I save the file
vim.api.nvim_create_autocmd({ "BufWrite" }, {
    callback = function()
        vim.lsp.buf.format()
    end,
})

-- for diagnostic
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
