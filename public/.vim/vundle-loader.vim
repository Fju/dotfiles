set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator' " generates YCM config files for C-family languages
let g:ycm_autoclose_preview_window_after_insertion = 1
if isdirectory('/usr/src/rust')
	let g:ycm_rust_src_path = '/usr/src/rust'
endif

" Syntaxic coloration
Plugin 'sheerun/vim-polyglot'
let g:rust_recommended_style = 0
let g:python_recommended_style = 0
autocmd FileType python setl sw=4 sts=4 et


Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/MatchTagAlways'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'

" Misc
Plugin 'chrisbra/Colorizer'
let g:colorizer_auto_filetype='css,html,svg'

Plugin 'airblade/vim-gitgutter'
set updatetime=250

" Linting
Plugin 'w0rp/ale'
Plugin 'bolasblack/csslint.vim'


" File navigation
Plugin 'jremmen/vim-ripgrep'
Plugin 'Valloric/ListToggle'

Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
if executable('rg')
	let g:ctrlp_user_command = 'rg --hidden -g ''!.git/'' --files --color=never %s'
endif

" Themes
Plugin 'tomazy/tomorrow-theme', {'rtp': 'vim/'} " chriskempson/tomorrow-theme fork that supports pangloss/vim-javascript
Plugin 'chriskempson/base16-vim'

" Snippets
Plugin 'SirVer/ultisnips' " snippet engine
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
Plugin 'honza/vim-snippets' " snippets themselves

call vundle#end()
filetype plugin indent on
autocmd FileType * set noexpandtab
