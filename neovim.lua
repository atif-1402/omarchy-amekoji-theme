return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#232829", -- Default background
                base01 = "#788587", -- Lighter background (status bars)
                base02 = "#232829", -- Selection background
                base03 = "#788587", -- Comments, invisibles
                base04 = "#d6dcdb", -- Dark foreground
                base05 = "#dcd6d6", -- Default foreground
                base06 = "#dcd6d6", -- Light foreground
                base07 = "#d6dcdb", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b39a98", -- Variables, errors, red
                base09 = "#b39898", -- Integers, constants, orange
                base0A = "#93b3a6", -- Classes, types, yellow
                base0B = "#98b3a3", -- Strings, green
                base0C = "#98b3b3", -- Support, regex, cyan
                base0D = "#85abbc", -- Functions, keywords, blue
                base0E = "#bea7b0", -- Keywords, storage, magenta
                base0F = "#c8dad3", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
