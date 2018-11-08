" Vim Plug
call plug#begin('~/.config/nvim/plugged')

" Utility
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
let g:SuperTabDefaultCompletionType = "<c-n>"
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'Shougo/neosnippet.vim'
Plug 'honza/vim-snippets'

Plug 'simeji/winresizer'

Plug 'rizzatti/dash.vim'

" HTML
Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways' " HTML Tag Matching

Plug 'ryanoasis/vim-devicons'
" Lightline(Powerline fork)
Plug 'itchyny/lightline.vim'

" Colorschemes
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'reedes/vim-colors-pencil'
Plug 'KKPMW/sacredforest-vim'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'dylanaraps/wal.vim'

Plug 'reedes/vim-thematic'

" Polyglot for syntax highlighting
Plug 'sheerun/vim-polyglot'

Plug 'francoiscabrol/ranger.vim'
" Dependency for ranger
Plug 'rbgrouleff/bclose.vim'


Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

Plug 'mhinz/vim-startify'

Plug 'tpope/vim-rails'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' " Adds git gutter to vim

Plug 'jiangmiao/auto-pairs'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'yuttie/comfortable-motion.vim'

" Writing plugins

Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug '907th/vim-auto-save'
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'amix/vim-zenroom2'
" Plug 'vim-pandoc/vim-pandoc'   " For writing in Pandoc markdown
" Plug 'vim-pandoc/vim-pandoc-syntax'"
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vimwiki/vimwiki'
Plug 'rhysd/vim-grammarous'

" use gt with text object to capitalize
Plug 'christoomey/vim-titlecase'
let g:titlecase_map_keys = 0

" Use vim with tmux
Plug 'christoomey/vim-tmux-navigator'

" Text objects
Plug 'michaeljsmith/vim-indent-object'

Plug 'chrisbra/Recover.vim'

" Initialize plugin system
call plug#end()

