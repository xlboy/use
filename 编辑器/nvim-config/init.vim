
call plug#begin("~/.vim/plugged")

set clipboard=unnamed

" Declare the list of plugins.
Plug 'tpope/vim-sensible'

" 主题
Plug 'junegunn/seoul256.vim'

Plug 'kylechui/nvim-surround'
Plug 'booperlv/nvim-gomove'

Plug 'hrsh7th/vim-searchx'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'phaazon/hop.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'justinmk/vim-sneak'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colo seoul256
set background=light

