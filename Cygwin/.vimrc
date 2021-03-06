"-----------------------------------------------------------------------------
" 一般
"-----------------------------------------------------------------------------

" viとの互換をとらない
set nocompatible

" コマンド、検索パターンを履歴に残す
set history=100


"-----------------------------------------------------------------------------
" 検索
"-----------------------------------------------------------------------------

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索結果文字列のハイライトを有効にする
set hlsearch


"-----------------------------------------------------------------------------
" 表示
"-----------------------------------------------------------------------------

" 行番号を表示させる
set number

" タイトルをウインドウ枠に表示
set title

" 入力中のコマンドをステータスに表示する
set showcmd

" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" ステータスラインの表示
set statusline=%F%m%r%h%w\ %=\ [TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]

" シンタックスハイライトを有効にする
syntax on

" 不可視文字を表示
set list

" 代替文字
set listchars=tab:^\ ,trail:~


"-----------------------------------------------------------------------------
" 編集、文書整形
"-----------------------------------------------------------------------------

" オートインデントを有効にする
set cindent

" Tab文字を画面上の見た目で何文字幅にするか設定
set tabstop=4

" cindentやautoindent時に挿入されるタブの幅
set shiftwidth=4

" Tab文字を空白に置き換えない
set noexpandtab

" 全てバックスペースで削除可能にする
set backspace=indent,eol,start

" コマンドライン補完するときに補完候補を表示する
set wildmenu


"-----------------------------------------------------------------------------
" ファイル
"-----------------------------------------------------------------------------

" バックアップファイルを作成しない
set nobackup


"-----------------------------------------------------------------------------
" 自動実行
"-----------------------------------------------------------------------------

" vimgrep実行時に、自動でcopenを行う
augroup grepopen
	autocmd!
	autocmd QuickfixCmdPost vimgrep cw
augroup END
