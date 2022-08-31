
lua require('keymaps')

function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

"----------------------------------------------------------------------
" Plugins
"----------------------------------------------------------------------
call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-sensible'
" 主题
Plug 'junegunn/seoul256.vim'

" 环绕
Plug 'kylechui/nvim-surround'
Plug 'booperlv/nvim-gomove'

Plug 'kevinhwang91/nvim-hlslens'
Plug 'numToStr/Comment.nvim'

Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })

call plug#end()

lua require('Comment').setup()

"----------------------------------------------------------------------
" Basic Options
"----------------------------------------------------------------------
colo seoul256
set background=light
set clipboard=unnamed

let g:mapleader = ' '
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion


"----------------------------------------------------------------------
" Easymotion Key Mappings
" https://raw.githubusercontent.com/Lokaltog/vim-easymotion/master/doc/easymotion.txt
"---------------------------------------------------------------------
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>b <Plug>(easymotion-b)
map <Leader>w <Plug>(easymotion-w)
map <Leader>s <Plug>(easymotion-s2)


"----------------------------------------------------------------------
" Normal key Mappings
"----------------------------------------------------------------------
nnoremap L $
nnoremap H j
nnoremap <leader>d "ad
nnoremap <leader>c "ac

inoremap kj <esc>
