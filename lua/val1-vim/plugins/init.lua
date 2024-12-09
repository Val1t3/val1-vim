return {
    {
      "maxmx03/solarized.nvim",
      lazy = false,
      priority = 1000,
      config = function(_, opts)
        vim.o.termguicolors = true
        require("solarized").setup(opts)
        vim.cmd.colorscheme("solarized")
      end,
    }, {
      "github/copilot.vim",
    }, {
      "lewis6991/gitsigns.nvim",
      lazy = true, -- Enable lazy loading
      event = {"BufReadPre", "BufNewFile"},
      config = function()
        require('gitsigns').setup()
      end,
    }, {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
    }, {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
      build = "make install_jsregexp",
      lazy=false
    }, {
      "williamboman/mason.nvim",
      cmd = "Mason",
      opts = function()
        return require("val1-vim.configs.mason")
      end,
    }, {
      "williamboman/mason-lspconfig.nvim",
    }, {
      "hrsh7th/nvim-cmp",
      event = "InsertEnter", -- Load on entering insert mode
      dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
        "hrsh7th/cmp-buffer", -- Buffer source
        "hrsh7th/cmp-path", -- Path source
        "hrsh7th/cmp-cmdline", -- Command-line source
        "L3MON4D3/LuaSnip", -- Snippets plugin
        "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
      },
      opts = function()
        return require("val1-vim.configs.cmp")
      end,
    }, {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
    }, {
        "nvim-tree/nvim-web-devicons",
    }, {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      opts = function()
        return require("val1-vim.configs.nvim-tree")
      end,
    }, {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      lazy=false,
      cmd="Telescope",
      keys={
        { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
        { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Find Buffers" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
        { "<leader>ft", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Find in Current Buffer" },
      }
    }, {
      "folke/which-key.nvim",
      lazy=false,
      event = "VeryLazy",
      keys = {
        {
          "<leader>?",
          function()
            require("which-key").show({ global = false })
          end,
          desc = "Buffer Local Keymaps (which-key)",
        },
      },
    },
}