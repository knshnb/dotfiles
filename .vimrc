" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'tpope/vim-commentary'
NeoBundle 'vim-scripts/dbext.vim'
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {}
let g:quickrun_config['markdown'] = {
  \ 'outputter': 'browser',
  \ 'command' : 'pandoc',
  \ }
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'davidhalter/jedi-vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

" jedi(Pythonの補完)用
" rename用のマッピングを無効にしたため、代わりにコマンドを定義
command! -nargs=0 JediRename :call jedi#rename()
" pythonのrename用のマッピングがquickrunとかぶるため回避させる
let g:jedi#rename_command = ""
let g:jedi#documentation_command = "<C-k>"

" merlinによるコード補完
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute 'set rtp+=' . g:opamshare . '/merlin/vim'

"commentary-vim .pyのコメントアウトを#で
autocmd Filetype python setlocal commentstring=#\ %s

"dbext MySQL
let g:dbext_default_profile_mySQL = 'type=MYSQL:srvname=localhost:user=root:passwd=:dbname=test'

"最下行の表示設定
:set laststatus=2
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"バックスペースを有効に
set backspace=indent,eol,start

"ヤンクをクリップボードに保存
set clipboard=unnamed,autoselect

"タブ関連
set expandtab "タブの代わりにスペースを挿入
set shiftwidth=2 "自動インデントのスペース数
set softtabstop=2 "タブキーのスペース数
"Makefileに対してはタブをそのまま使う
let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif

"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set cindent "オートインデント

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"Yを行末までのヤンクに
nnoremap Y y$

"display設定
set display=lastline

"検索時のハイライト
set hlsearch

"対応する括弧に0.1秒ジャンプ
set showmatch
set matchtime=1

"貼り付けの時に自動でpasteモードに
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif

"マウスを有効に
set mouse=a

"swapファイルを作成しない"
set noswapfile
