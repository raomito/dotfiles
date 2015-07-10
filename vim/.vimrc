" Vim configuration file to specify the options
" Maintainer: raomito

" ============================================================================
" Basic:

" .vimrc .gvimrc のパスを指定
let $MYVIMRC = expand('~/.dotfiles/vim/.vimrc')
let $MYGVIMRC = expand('~/.dotfiles/vim/.gvimrc')

" 読み込む設定ファイルの指定
set runtimepath+=~/.vim/,~/.vim/colors

" augroupを定義
augroup MyAutoCmd
  autocmd!
augroup END

" ============================================================================
" File:

" Vim内部のエンコーディング
set encoding=utf-8

" ファイルのエンコーディング
set fileencoding=utf-8

" ファイルの文字コード自動認識
set fileencodings=utf-8,iso-2022-jp,cp932

" ファイルのフォーマット
set fileformat=unix

" ファイルのフォーマット自動認識
set fileformats=unix,dos,mac

" .vimrc(_vimrc)のエンコーディングがcp932の場合
" scriptencoding cp932

" 文脈依存な文字幅の設定
set ambiwidth=double

" ファイル更新時の自動再読み込み
set autoread

" 自動バックアップの無効化
set nobackup

" 自動スワップファイル作成の無効化
set noswapfile

" アンドゥファイルの保存先
set undodir=~/.vim/cache/undo

" アンドゥ履歴を復元
set undofile

" ファイル保存時に行末のスペースを削除
autocmd MyAutoCmd BufWritePre * :%s/\s\+$//ge

" カーソル位置を記憶する
autocmd MyAutoCmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endif

" ============================================================================
" Edit:

" <BS>で既存の文字を削除できるように設定
" start  => 既存の文字を削除できるように設定
" eol    => 行頭で[Backspace]を使用した場合上の行と連結
" indent => オートインデントモードでインデントを削除できるように設定
set backspace=start,eol,indent

" マウス機能有効化
set mouse=a

" タブを空白に
set expandtab

" タブの幅を設定
" set tabstop=8
set softtabstop=4

" インデントの幅を設定
set shiftwidth=4

" 既存の行のインデント構造をコピーする
set copyindent
set preserveindent

" 改行した際の自動インデント挿入
set autoindent

" クリップボードを共有
set clipboard=unnamed

" 文字の無い場所にもカーソル移動が可能
set virtualedit=block

" ============================================================================
" Display:

" ターミナルマルチプレクサを起動している場合
if &term =~ '^screen'
  set t_ts=]0;
  set t_fs=
endif

" ウィンドウタイトル表示
let &titlestring = 'Thanks for flying Vim'
set title

" 行番号を表示
set number

" ステータスラインを常に表示
set laststatus=2

" ステータスライン表示
" set statusline=%t\ %m%r%h%w[%Y][%{&fenc}][%{&ff}]%=%c,%l%11p%%

" タブラインを常に表示
set showtabline=2

" コマンドラインの高さ
set cmdheight=2

" ポップアップメニューに表示される項目数
set pumheight=10

" モード切り替え時のメッセージ表示
set noshowmode

" タブと行末の半角スペースの強調表示
set list

" タブを">"行末の半角スペースを"-"で表示
set lcs=tab:>\ ,trail:-

" カレントウィンドウのみ罫線を引く
autocmd MyAutoCmd WinLeave * set nocursorline
autocmd MyAutoCmd WinEnter,BufRead * set cursorline

" 全角スペースの強調表示
autocmd MyAutoCmd Colorscheme *
\ highlight IdeographSpace ctermbg=124 guibg=#AF0000
autocmd MyAutoCmd VimEnter,WinEnter * match IdeographSpace /　/

" 長い行を折り返さない
set nowrap
set textwidth=0

" 折り畳み
" set foldenable
" set foldmethod=expr
set foldmethod=marker

" ============================================================================
" Search:

" 大文字小文字を区別しない
set ignorecase

" 大文字小文字を区別する
" set smartcase

" ハイライトを有効化
set hlsearch

" インクリメンタルサーチを有効化
set incsearch

" ============================================================================
" Neobundle:

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleFetch => neobundle.vim自体をneobundle.vimで管理する
" NeoBundleLazy  => プラグインの遅延読み込み
" commands       => コマンドが入力されたら読み込む
" filetypes      => ファイル形式が一致したら読み込む

NeoBundleLazy 'glidenote/memolist.vim', {
\ 'autoload': {
\   'commands': ['MemoNew', 'MemoList']
\ }
\}
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundleLazy 'mattn/emmet-vim', {
\ 'autoload': {
\   'filetypes': ['html']
\  }
\}
NeoBundleLazy 'raomito/unite-memolist', {
\ 'autoload': {
\   'unite_sources': 'memolist',
\ }
\}
NeoBundleLazy 'scrooloose/syntastic', {
\ 'autoload': {
\   'commands': ['SyntasticCheck']
\ }
\}
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundleLazy 'Shougo/vimfiler.vim', {
\ 'autoload': {
\   'commands': ['VimFiler', 'VimFilerExplorer']
\ }
\}
NeoBundle 'Shougo/vimproc.vim', {
\ 'build': {
\   'unix': 'make -f make_unix.mak',
\   'mac': 'make -f make_mac.mak',
\   'cygwin': 'make -f make_cygwin.mak',
\ }
\}
NeoBundleLazy 'Shougo/vimshell.vim', {
\ 'autoload': {
\   'commands': ['VimShell']
\ }
\}
NeoBundle 'thinca/vim-quickrun'
NeoBundleLazy 'thinca/vim-ref', {
\ 'autoload': {
\   'commands': ['Ref'],
\   'filetypes': ['ruby']
\ }
\}
NeoBundleLazy 'tpope/vim-rails', {
\ 'autoload': {
\   'filetypes': ['ruby']
\  }
\}
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundleLazy 'vim-jp/cpp-vim', {
\ 'autoload': {
\   'filetypes': ['cpp']
\ }
\}
NeoBundleLazy 'vim-ruby/vim-ruby', {
\ 'autoload': {
\   'filetypes': ['ruby']
\ }
\}
NeoBundle 'vim-scripts/Align'
NeoBundle 'Yggdroot/indentLine'

call neobundle#end()
filetype plugin indent on

" ============================================================================
" Emmet:

" 展開キー変更
let g:user_emmet_expandabbr_key = '<C-t>'

" ファイルタイプ毎にスニペットを追加
let g:user_emmet_settings = {
\ 'indentation': '',
\ 'lang': 'ja',
\ 'javascript': {
\   'snippets': {
\     'jq': "\\$(function() {\n\t\\${cursor}\\${child}\n});",
\     'fn': "(function() {\n\t\\${cursor}\n})();",
\   },
\ },
\ 'eruby': {
\   'snippets': {
\     'er': "<% \\${cursor} %>",
\   },
\ },
\}

" ============================================================================
" Indentline:

" 自動起動
let g:indentLine_enabled = 0

" ラインの色
let g:indentLine_color_term = '242'
let g:indentLine_color_gui = '#6C6C6C'

" 起動
nnoremap <silent> <Space>hi :<C-u>IndentLinesToggle<CR>

" ============================================================================
" Lightline:

let g:lightline = {
\ 'colorscheme': 'pagode',
\ 'enable': {
\  'tabline': 1
\ },
\ 'active': {
\   'left': [ ['mode', 'paste'], ['fugitive', 'filename'] ],
\ },
\ 'inactive': {
\   'right': [ ['space'] ],
\ },
\ 'tabline': {
\   'left': [ ['tabline'], ['tabs'] ],
\ },
\ 'tab': {
\   'active': ['tabnum', 'filename'],
\   'inactive': ['tabnum', 'filename'],
\ },
\ 'component': {
\   'tabline': 'TABLINE',
\   'space': '      ',
\ },
\ 'component_function': {
\   'fugitive': 'MyFugitive',
\   'readonly': 'MyReadonly',
\   'filename': 'MyFilename',
\   'modified': 'MyModified',
\ },
\ 'separator': { 'left': '⮀', 'right': '⮂' },
\ 'subseparator': { 'left': '⮁', 'right': '⮃' },
\}

" Unite上でステータスラインを有効化
let g:unite_force_overwrite_statusline = 0

" Vimfiler上でステータスラインを有効化
let g:vimfiler_force_overwrite_statusline = 0

" Vimshell上でステータスラインを有効化
let g:vimshell_force_overwrite_statusline = 0

function! MyFugitive()
  if exists('*fugitive#head')
    let fugitive = fugitive#head()
    return strlen(fugitive) ? '⭠ '.fugitive : ''
  else
    return ''
  endif
endfunction

function! MyReadonly()
  if &filetype =~ 'help\|unite\|vimfiler\|vimshell'
    return ''
  else
    return &readonly ? '⭤' : ''
  end
endfunction

function! MyModified()
  if &filetype =~ 'help\|unite\|vimfiler\|vimshell'
    return ''
  else
    return &modified ? '+' : &modifiable ? '' : '-'
  end
endfunction

function! MyFilename()
  let readonly = strlen(MyReadonly()) ? MyReadonly().' ' : ''
  let filename = strlen(expand('%:t')) ? expand('%:t') : '[No Name]'
  let modified = strlen(MyModified()) ? ' '.MyModified() : ''
  return readonly.filename.modified
endfunction

" ============================================================================
" Memolist:

" メモが出力されるディレクトリを指定
let g:memolist_path = expand('~/dropbox/memo')

" エクスプローラにVimfilerを使用
" let g:memolist_vimfiler = 1
" let g:memolist_vimfiler_option = '-horizontal'

" 新規作成時にカテゴリ、タグを指定
let g:memolist_prompt_categories = 1
let g:memolist_prompt_tags = 1

" 起動
nnoremap <silent> <Space>mn :<C-u>MemoNew<CR>
nnoremap <silent> <Space>ml :<C-u>Unite memolist<CR>

" ============================================================================
" Neocomplete:

" キャッシュファイル
let g:neocomplete#data_directory = expand('~/.vim/cache/neocomplete')

" 自動起動
let g:neocomplete#enable_at_startup = 1

" 大文字小文字を区別する
let g:neocomplete#enable_smart_case = 1

" キーワードパターンを定義
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif

" 日本語を補完候補に加えない
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" 補完の追加
let g:neocomplete#sources#dictionary#dictionaries = {
\ 'ruby': expand('~/.vim/dict/ruby.dict'),
\}

" 補完候補のページ移動
inoremap <expr><C-f>  pumvisible() ? "\<PageDown>" : "\<Right>"
inoremap <expr><C-b>  pumvisible() ? "\<PageUp>"   : "\<Left>"

" 補完候補ウィンドウを閉じる
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" 補完を確定する
inoremap <expr><C-y> neocomplete#close_popup()

" 補完をキャンセルし補完候補ウィンドウを閉じる
inoremap <expr><C-e> neocomplete#cancel_popup()

" ============================================================================
" Neomru:

" キャッシュファイル
let g:neomru#file_mru_path = expand('~/.vim/cache/neomru/file')
let g:neomru#directory_mru_path = expand('~/.vim/cache/neomru/directory')

" 日付を表示
"let g:neomru#time_format = '(%F %R) '

" ファイルのフォーマット
let g:neomru#filename_format = ':p:~'

" 最近編集したファイル一覧
nnoremap <silent> <Space>fm :<C-u>Unite file_mru<CR>

" ============================================================================
" Neosnippet:

" キャッシュファイル
let g:neosnippet#data_directory = expand('~/.vim/cache/neosnippet')

" スニペットが置いてあるディレクトリを指定
let g:neosnippet#snippets_directory = expand('~/.vim/snippet')

" スニペットを展開
imap <C-s> <Plug>(neosnippet_expand_or_jump)
smap <C-s> <Plug>(neosnippet_expand_or_jump)

" ============================================================================
" Quickrun:

" 最下段に表示ウィンドウの高さを指定
" 出力が無い場合ウィンドウを表示させない
" 非同期実行(vimproc)
let g:quickrun_config = {
\ '_': {
\   'outputter/buffer/split': 'botright 8sp',
\   'outputter/buffer/close_on_empty': 1,
\   'runner': 'vimproc',
\   'runner/vimproc/updatetime': 60,
\ }
\}

" 実行プログラムの指定
if executable('node')
  let g:quickrun_config.javascript = { 'type': 'javascript/nodejs' }
endif

" 起動
nnoremap <silent> <Space>k :<C-u>QuickRun >message<CR>
nnoremap <silent> <Space>kk :<C-u>QuickRun >buffer<CR>

" ============================================================================
" Syntastic:

" active_filetypesファイル保存時に構文チェックを行う
" passive_filetypesコマンドを入力して構文チェックを行う
let g:syntastic_mode_map = {
\ 'mode': 'passive',
\ 'active_filetypes': [],
\ 'passive_filetypes': ['javascript', 'ruby', 'php', 'html']
\}

" ファイルを開いた際に構文チェックを行う
" let g:syntastic_check_on_open = 1

" 自動でエラーウィンドウを表示する
let g:syntastic_auto_loc_list = 1

" エラーウィンドウの高さ
let g:syntastic_loc_list_height = 5

" 構文チェックを行う
nnoremap <silent> <Space>s :<C-u>SyntasticCheck<CR>

" モードの切替え(active/passive)
nnoremap <silent> <Space>ss :<C-u>SyntasticReset<CR>

" ============================================================================
" Unite:

" キャッシュファイル
let g:unite_data_directory = expand('~/.vim/cache/unite')

" delete <C-d>アクションでファイルを削除する
call unite#custom#alias('file', 'delete', 'vimfiler__delete')

" :Unite memolistした際のファイルの順番を作成日時順にする
call unite#custom_source('memolist', 'sorters', 'sorter_memolist_date')

" バッファ一覧
nnoremap <silent> <Space>fb :<C-u>Unite buffer<CR>

" レジスタ一覧
nnoremap <silent> <Space>fr :<C-u>Unite register<CR>

" タブページ一覧
nnoremap <silent> <Space>ft :<C-u>Unite tab<CR>

" ============================================================================
" Vimfiler:

" キャッシュファイル
let g:vimfiler_data_directory = expand('~/.vim/cache/vimfiler')

" デフォルトのエクスプローラに
let g:vimfiler_as_default_explorer = 1

" 起動
nnoremap <silent> <Space>f :<C-u>VimFiler<CR>
nnoremap <silent> <Space>fe :<C-u>VimFilerExplorer<CR>

" ============================================================================
" Vimref:

" キャッシュファイル
let g:ref_cache_dir = expand('~/.vim/cache/vimref')

" 辞書登録
let g:ref_source_webdict_sites = {
\ 'weblio': {
\   'url': 'http://ejje.weblio.jp/small/content/%s'
\ },
\ 'wikipedia': {
\   'url': 'http://ja.wikipedia.org/wiki/%s'
\ }
\}

" デフォルトサイト
let g:ref_source_webdict_sites.default = 'weblio'

" 出力サイトの修正(最初の数行を削除する)
function! g:ref_source_webdict_sites.weblio.filter(output)
  return join(split(a:output, "\n")[19 :], "\n")
endfunction

" 起動
nnoremap <silent> <Space>re :<C-u>Ref webdict weblio<Space>
nnoremap <silent> <Space>rw :<C-u>Ref webdict wikipedia<Space>
nnoremap <silent> <Space>rr :<C-u>Ref refe<Space>

" ============================================================================
" Vimshell:

" 起動
nnoremap <silent> <Space>vs :<C-u>VimShell<CR>

" ============================================================================
" Vimproc:

" Windowsの場合
" https://github.com/Shougo/vimproc/downloads から
" vimproc_win32 もしくは vimproc_win64 をダウンロードし
" vimproc/autoload 下に配置

" ============================================================================
" Keymappings:

" Normal
" --------------------------------------
" 行末へ移動
nnoremap 9 $

" コマンドラインモードへ
nnoremap ; :

" 数値のインクリメント
nnoremap <C-n>+ <C-a>

" 数値のデクリメント
nnoremap <C-n>- <C-x>

" Exモードを無効化
nnoremap Q <Nop>

" サスペンド無効化
nnoremap <C-z> <Nop>

" カーソル位置の単語をヤンクした単語に置換
nnoremap cwc "aciw<C-r>*<Esc><CR>
nnoremap cwy "aciw<C-r>0<Esc><CR>

" 検索結果のハイライト解除
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" カーソル位置の次行に空行を挿入
nnoremap <silent> O :<C-u>call append(expand('.'), '')<CR>j

" .vimrcを編集
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>

" .gvimrcを編集
nnoremap <silent> <Space>eg :<C-u>edit $MYGVIMRC<CR>

" .vimrcの再読み込み
nnoremap <silent> <Space>rv
\ :<C-u>source $MYVIMRC \| noh \| redraw \| echo 'source .vimrc'<CR>

" .gvimrcの再読み込み
nnoremap <silent> <Space>rg
\ :<C-u>source $MYGVIMRC \| noh \| redraw \| echo 'source .gvimrc'<CR>

" カレントディレクトリをファイルが存在するディレクトリへ変更
nnoremap <silent> <Space>cd :<C-u>lcd `=expand('%:p:h')`<CR>

" タブ幅を変更
nnoremap <silent> <Space>t2 :<C-u>setlocal softtabstop=2 shiftwidth=2<CR>
nnoremap <silent> <Space>t4 :<C-u>setlocal softtabstop=4 shiftwidth=4<CR>
nnoremap <silent> <Space>t8 :<C-u>setlocal softtabstop=8 shiftwidth=8<CR>

" タブページ作成
nnoremap <silent> <C-w>c :<C-u>tabnew<CR>

" Insert
" --------------------------------------
" ノーマルモードへ
inoremap jj <Esc>

" 挿入モード時のカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" 引用符、括弧の設定
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap '' ''<Left>
inoremap "" ""<Left>
inoremap <> <><Left>

" Commandline
" --------------------------------------

" Visual
" --------------------------------------
" 行末へ移動
vnoremap 9 $

" ============================================================================
" Syntax:

" シンタックスハイライト有効化
syntax enable

" ============================================================================
" Colorscheme:

" カラースキーマ
set t_Co=256
colorscheme pagode

" ============================================================================
" Filetypes:

" CPP
" --------------------------------------
autocmd MyAutoCmd Filetype cpp
\ setlocal softtabstop=2 shiftwidth=2

" Markup
" --------------------------------------
autocmd MyAutoCmd Filetype html,yaml
\ setlocal softtabstop=2 shiftwidth=2

" JavaScript
" --------------------------------------
autocmd MyAutoCmd Filetype javascript,json
\ setlocal softtabstop=2 shiftwidth=2

" Ruby
" --------------------------------------
autocmd MyAutoCmd Filetype ruby
\ setlocal softtabstop=2 shiftwidth=2

" Shell
" --------------------------------------
autocmd MyAutoCmd Filetype sh,bash,zsh
\ setlocal softtabstop=2 shiftwidth=2

" ファイルタイプを指定
let g:is_bash = 1

" Vim
" --------------------------------------
autocmd MyAutoCmd Filetype vim
\ setlocal softtabstop=2 shiftwidth=2

" 継続行のインデントを無効化
let g:vim_indent_cont = 0

