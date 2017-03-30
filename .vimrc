".pyのコメントアウトを#で
autocmd Filetype python setlocal commentstring=#\ %s

"バックスペースを有効に
set backspace=indent,eol,start

"ヤンクをクリップボードに保存
set clipboard=unnamed,autoselect

"タブ関連
set expandtab "タブの代わりにスペースを挿入
set shiftwidth=4 "自動インデントのスペース数
set softtabstop=4 "タブキーのスペース数

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
