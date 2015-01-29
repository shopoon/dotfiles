"-------------------------------------------------------------------------
" NeoBundleに関する設定:
"
" vi互換をナシにする
set nocompatible
" For plugin {{{
filetype off

if has('vim_starting')
  set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
" Plugin管理用のPlugin
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" IDE風エディタを実装
NeoBundle 'Shougo/vimfiler'
" コンパイル用?
NeoBundle 'Shougo/vimproc'
" 様々な便利機能を実装
NeoBundle 'Shougo/unite.vim'
" FileMruを追加
NeoBundle 'Shougo/neomru.vim'
" 補完用のプラグイン
NeoBundle 'Shougo/neocomplcache'
" Ruby向けにendを自動挿入
NeoBundle 'tpope/vim-endwise'
" コメントON/OFFを手軽に実行（Ctrl + _x2）
NeoBundle 'tomtom/tcomment_vim'
" インデントに色をつけて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" Ruby編集時に自動でendを入力してくれる
NeoBundleLazy 'alpaca-tc/vim-endwise.git', { 
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}
" 爆速htmlコーディング用
NeoBundle 'mattn/emmet-vim' 
" 文字列操作のためのプラグイン
NeoBundle 'surround.vim'
" リファレンス用のプラグイン
NeoBundle 'thinca/vim-ref'
" 置換する文字列をハイライト
NeoBundle 'osyo-manga/vim-over'
" Powerlineを実装する
NeoBundle 'itchyny/lightline.vim'
" vimでmemoをとる
NeoBundle 'glidenote/memolist.vim'
" Markdownのsyntax
NeoBundle 'rcmdnk/vim-markdown'
" Markdownをpreviewするためのプラグイン
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

" カラースキーム
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'railscasts'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'tomasr/molokai'

filetype plugin indent on
" Pluginのチェック
NeoBundleCheck
" }}}


"--------------------------------------------------------------------------
" エンコードに関する設定
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

"---------------------------------------------------------------------------
" 検索の挙動に関する設定:

" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase
" インクリメンタルサーチ
set incsearch
" 検索ハイライト
set hlsearch
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
  
"---------------------------------------------------------------------------
" 編集に関する設定:
"
" タブの画面上での幅
set tabstop=2
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2
" 自動インデントでずれる幅
set shiftwidth=2
" タブをスペースに展開する/ しない (expandtab:展開する)
set expandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
"クリップボードを利用する
set clipboard=unnamed 
" カーソルが行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 行移動を実際の行と合わせる
nnoremap j gj
nnoremap k gk
" Insertモードでも貼り付け
nnoremap <c-v> <esc>pa
" Normalモードでもカーソル位置で改行
nnoremap <CR> i<CR><esc>

"---------------------------------------------------------------------------
"Windowに関する設定:
"
" Shift+hjklでウィンドウのサイズ変更
nnoremap <silent> <S-Left>  :5wincmd <<CR>
nnoremap <silent> <S-Right> :5wincmd ><CR>
nnoremap <silent> <S-Up>    :5wincmd -<CR>
nnoremap <silent> <S-Down>  :5wincmd +<CR>
" Ctrl + hjkl でウィンドウを移動する
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
 
"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" タイトルを表示する
set title
" 行番号を表示 (nonumber:非表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set nolist
" どの文字でタブや改行を表示するかを設定
set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" モードを表示する
set showmode
" タイトルを表示
set title
" 画面のカラースキーマCygwinでみやすい色使い
colorscheme desert
" 全角スペースを表示する
highlight link ZenkakuSpace Error
match ZenkakuSpace /　/
 
"---------------------------------------------------------------------------
" ファイル操作に関する設定:
"
" バックアップファイルを作成しない (次行の先頭の "
" を削除すれば有効になる)
set nobackup
" スワップファイルを作成しない (次行の先頭の " を削除すれば有効になる)
set noswapfile
" undoファイルを作成しない
set noundofile
" シンタックスハイライト
syntax on
" 自動読み込み
set autoread

"--------------------------------------------------------------------------
" Uniteに関する設定
"
" Prefixキーを<Space>fにする
nnoremap [unite] <Nop>
nmap <Space>f [unite]
" For ack
if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
  let g:unite_source_grep_recursive_opt = ''
endif

" キーマップ
" 現在開いているファイルのディレクトリ下のファイル一覧
nnoremap <silent> [unite]f :<c-u>UniteWithBufferDir -buffer-name=files file<CR>
" バッファ一覧
nnoremap <silent> [unite]b :<c-u>Unite buffer<CR>
" レジスタ一覧
nnoremap <silent> [unite]r :<c-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]m :<c-u>Unite file_mru<CR>
" uniteを開いている間のキーマッピング
augroup vimrc
  autocmd FileType unite call s:unite_my_settings()
augroup END
function! s:unite_my_settings()
  "ESCでUniteを終了
  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction

"--------------------------------------------------------------------------
" vim-indent-guides用の設定:
"
" vimを立ち上げたときに自動的にインデントに色をつける
let g:indent_guides_enable_on_vim_startup=1

"--------------------------------------------------------------------------
" Vimfiler用の設定:
"
" vimデフォルトのエクスプローラーをvimfilerで置き換える
let g:vimfiler_as_default_explorer = 1
" セーフモードを無効にした状態で起動する
let g:vimfiler_safe_mode_by_default = 0
" IDE風に開く
nnoremap <silent> <Leader>fi :<c-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>

"--------------------------------------------------------------------------
" neocomplcache用の設定:
"   (全部どっかからパクってきたやつ）
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" " Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

"--------------------------------------------------------------------------
" vim-rails用の設定:
"
let g:rails_default_file='config/database.yml'
let g:rails_level=4
let g:rails_mappings=1
let g:rails_modelines=0
function! SetUpRailsSetting()
  nnoremap <buffer><Space>r :R<CR>
  nnoremap <buffer><Space>a :A<CR>
  nnoremap <buffer><Space>m :Rmodel<Space>
  nnoremap <buffer><Space>c :Rcontroller<Space>
  nnoremap <buffer><Space>v :Rview<Space>
  nnoremap <buffer><Space>p :Rpreview<CR>
endfunction

aug MyAutoCmd
  au User Rails call SetUpRailsSetting()
aug END

aug RailsDictSetting
  au!
aug END

"--------------------------------------------------------------------------
" Memolist.vim用の設定
"
" 保存するPathの指定
let g:memolist_path = "~/Dropbox/Memo/"
" uniteと連携する
let g:memolist_unite = 1
" recで開く
let g:memolist_unite_source = "file_rec"
" インサートモードで開く
let g:memolist_unite_option = "-auto-preview -start-insert"
" キーマッピング
nnoremap <Leader>mn :MemoNew<CR>
nnoremap <Leader>ml :MemoList<CR>
nnoremap <Leader>mg :<C-u>Unite grep:~/Dropbox/Memo<CR>

