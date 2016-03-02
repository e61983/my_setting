set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/c/Users/Hua-Yuan/vimfiles/bundle/Vundle.vim/

" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" Setting up Vundle - the vim plugin bundler

call vundle#begin('~/vimfiles/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'vim-scripts/utl.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
" Snippets {
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
" }
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'yegappan/grep'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" �C��t�m {
set title
set number             " ��ܦ渹
set cursorline         " �Ҧb�氪�G��
set list lcs=tab:\|\   " �H | ����� Tab
syntax enable
colorscheme delek 
let g:solarized_termcolors=256
" }

" �@��]�w
let mapleader=","      " Leader key
set history=1000       " ���v�O������
set ruler              " ��ܪ��A��
set autoread           " ���Q�ק�ɦ۰ʭ��s���J

filetype off
syntax on              " �̾ڵ{���y�k��ܤ��P�C��
filetype on            " ����������
filetype indent on     " ��������Y�Ƥ��
filetype plugin on     " ��������~�����

set hlsearch           " �j�M�ɰ��G�����
set backspace=2        " �� backspace key ���`���B�zindent
set clipboard=unnamed  " �Pwindows�@�ɰŶK�O 
set showmatch          " ��ܹ������A��
set wildchar=<TAB>
set wildmenu
set wildignore=*.o,*.class,*.pyc

set incsearch          " �Y�ɷj�M
set nobackup           " ���n���ͳƥ���
set ignorecase         " �j�M�ɥG���j�p�g
set smartcase
set smarttab

set noerrorbells       " �������~���ܭ�
set novisualbell       " ���{�{
set tm=500

" �P�|�]�m {
set foldmethod=syntax  " �λy�k���G�өw�q�P�|
set foldlevel=100      " �Ұ�vim�ɤ��n�۰ʺP�|�N�X
" }

" TAB �Y�Ƴ]�w{
set smartindent
set autoindent         " �۰��Y��
set cindent
set expandtab
set tabstop=4          " Tab �e��
set shiftwidth=4       " �Y�Ʀr����
set softtabstop=4
au FileType Makefile set noexpandtab
map <F12> :!astyle --style=kr --indent=spaces=4 --indent-switches --suffix=none %<CR>
" }

" C/C++ specific settings
autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30

" }

" �s�X�]�w {
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1
if &term =~ 'screen'
    set t_Co=256
endif
" }

" �۰ʬA���ɻ� {
:inoremap ( ()<LEFT>
:inoremap " ""<LEFT>
:inoremap ' ''<LEFT>
:inoremap { {}<LEFT>
:inoremap [ []<LEFT>
" }

" Tags �]�w
set tags=tags;
set autochdir
map <C-F12> :!ctags -R --fields=+iaS --extra=+q * <CR>
"} 

" Plugin Setting {

" PowerLine {
let g:Powerline_symbols = 'unicode'
set laststatus=2
" }
"
" NERDTree {
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="right"
" }

" Syntastic Setting {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0  
" }

" Snipmate Setting {
"}

" indentLine Setting {
let g:indentLine_color_term = 239
" }

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
"}
