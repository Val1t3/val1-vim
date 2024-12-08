return {
  config = function()
    local nvim_tree = require("nvim-tree.api").tree

    -- Global key mapping for toggling nvim-tree
    vim.keymap.set("n", "<C-n>", nvim_tree.toggle, { desc = "Toggle nvim-tree", noremap = true, silent = true })

    require("nvim-tree").setup {
      renderer = {
        icons = {
          glyphs = {
            default = "", -- Default file icon
            symlink = "", -- Symlink icon
            folder = {
              arrow_closed = "", -- Arrow when folder is closed
              arrow_open = "", -- Arrow when folder is open
              default = "", -- Default folder icon
              open = "", -- Open folder icon
              empty = "", -- Empty folder icon
              empty_open = "", -- Empty open folder icon
              symlink = "", -- Symlink folder icon
              symlink_open = "", -- Symlink open folder icon
            },
          },
        },
      },
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        -- Buffer-local key mappings (optional)
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        vim.keymap.set("n", "q", api.tree.close, opts("Close"))
        vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
        vim.keymap.set("n", "a", api.fs.create, opts("Create File/Folder"))
        vim.keymap.set("n", "d", api.fs.remove, opts("Delete File/Folder"))

      end,
    }
  end,
}

