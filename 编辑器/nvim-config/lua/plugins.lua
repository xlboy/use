-- local vscode = vim.g.vscode == 1
return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- gruvbox theme
    use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }



    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({})
        end
    })

    -- use {
    --     "asvetliakov/vim-easymotion",
    --     -- disable = vim.g.vscode == 0
    -- }
--
    use {"justinmk/vim-sneak"}
    -- use {"ggandor/leap.nvim"}
    -- use {"easymotion/vim-easymotion"}

    -- use 'ggandor/lightspeed.nvim'

end)
