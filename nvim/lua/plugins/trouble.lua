return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Toruble",
    opts = { use_diagnostic_signs = true },
    keys = {
        { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>",  desc = "Diagnostics (Trouble)" },
        { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
    },
}
