return {
    {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
            require("nvim-dap-virtual-text").setup()
        end,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            handlers = {},
        },
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },

        config = function()
            require("dapui").setup()
            local dap = require("dap")
            local dapui = require("dapui")
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end,
    },

    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            -- Toggle a break point
            vim.keymap.set("n", "<Leader>dt", function()
                require("dap").toggle_breakpoint()
            end)
            -- Toggle a continue point
            vim.keymap.set("n", "<Leader>dc", function()
                require("dap").continue()
            end)

            vim.keymap.set("n", "<Leader>do", function()
                require("dap").step_over()
            end)
            vim.keymap.set("n", "<Leader>di", function()
                require("dap").step_into()
            end)
            vim.keymap.set("n", "<Leader>dso", function()
                require("dap").step_out()
            end)
        end,
    },
}
