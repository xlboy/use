
" lua require('keymaps')

function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

"----------------------------------------------------------------------
" Plugins
"----------------------------------------------------------------------
call plug#begin("~/.vim/plugged")

" 基础设置
Plug 'tpope/vim-sensible'
" 主题
Plug 'junegunn/seoul256.vim'

" 环绕
Plug 'tpope/vim-surround'
Plug 'booperlv/nvim-gomove'

Plug 'terryma/vim-smooth-scroll'

" 各类单词的跳转（例：大写单词、小写单词、全大写单词...）
Plug 'chaoren/vim-wordmotion'

Plug 'yamatsum/nvim-cursorline'


Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
Plug 'xlboy/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
Plug 'rhysd/clever-f.vim'
Plug 'itchyny/vim-cursorword'

call plug#end()

lua require('Comment').setup()


" autocmd InsertEnter * :!/usr/local/bin/im-select com.apple.keylayout.ABC


" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


"----------------------------------------------------------------------
" Basic Options
"----------------------------------------------------------------------
colo seoul256
set background=light
set clipboard=unnamed

let g:mapleader = ' '
let g:EasyMotion_startofline = 1 " keep cursor column when JK motion
let g:wordmotion_prefix = ';'


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




"----------------------------------------------------------------------
" Normal Key Mappings
"----------------------------------------------------------------------
nnoremap L $
vnoremap L $
nnoremap H ^
vnoremap H ^
nnoremap <leader>d "ad
nnoremap <leader>c "ac

inoremap kj <esc>


"----------------------------------------------------------------------
" VSCode key Mappings
"----------------------------------------------------------------------

nnoremap <silent> za <Cmd>call VSCodeNotify('editor.toggleFold')<CR>
nnoremap <silent> zR <Cmd>call VSCodeNotify('editor.unfoldAll')<CR>
nnoremap <silent> zM <Cmd>call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zo <Cmd>call VSCodeNotify('editor.unfold')<CR>
nnoremap <silent> <CR> <Cmd>call VSCodeNotify('editor.unfold')<CR>
nnoremap <silent> zO <Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>
nnoremap <silent> zc <Cmd>call VSCodeNotify('editor.fold')<CR>
nnoremap <silent> zC <Cmd>call VSCodeNotify('editor.foldRecursively')<CR>

nnoremap <silent> z1 <Cmd>call VSCodeNotify('editor.foldLevel1')<CR>
nnoremap <silent> z2 <Cmd>call VSCodeNotify('editor.foldLevel2')<CR>
nnoremap <silent> z3 <Cmd>call VSCodeNotify('editor.foldLevel3')<CR>
nnoremap <silent> z4 <Cmd>call VSCodeNotify('editor.foldLevel4')<CR>
nnoremap <silent> z5 <Cmd>call VSCodeNotify('editor.foldLevel5')<CR>
nnoremap <silent> z6 <Cmd>call VSCodeNotify('editor.foldLevel6')<CR>
nnoremap <silent> z7 <Cmd>call VSCodeNotify('editor.foldLevel7')<CR>
xnoremap <silent> zV <Cmd>call VSCodeNotify('editor.foldAllExcept')<CR>

nnoremap <silent> gt <Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>