return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {
        [[    $$$$$\ $$$$$$$\             $$$$$$\             ]],
        [[    \__$$ |$$  __$$\           $$  __$$\            ]],
        [[       $$ |$$ |  $$ |$$\   $$\ $$ /  \__|$$$$$$$$\  ]],
        [[       $$ |$$$$$$$  |\$$\ $$  |$$ |      \____$$  | ]],
        [[ $$\   $$ |$$  ____/  \$$$$  / $$ |        $$$$ _/  ]],
        [[ $$ |  $$ |$$ |       $$  $$<  $$ |  $$\  $$  _/    ]],
        [[ \$$$$$$  |$$ |      $$  /\$$\ \$$$$$$  |$$$$$$$$\  ]],
        [[  \______/ \__|      \__/  \__| \______/ \________| ]],
    }

    alpha.setup(dashboard.opts)
  end,
}
