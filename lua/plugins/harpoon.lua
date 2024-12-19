return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED
  end,

  keys = {
    {
      "<leader>a",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Add file to harpoon",
    },
    {
      "<C-e>",
      function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end,
      desc = "See harpooned files",
    },
    {
      "<C-h>",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "Harpoon Select 1",
    },
    {
      "<C-j>",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "Harpoon Select 2",
    },
    {
      "<C-k>",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "Harpoon Select 3",
    },
    {
      "<C-l>",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "Harpoon Select 4",
    },
  },
}
