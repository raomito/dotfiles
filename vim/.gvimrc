" GVim configuration file to specify the options
" Maintainer: raomito

" ============================================================================
" Basic:

" 文字コード
let $LANG = 'ja_JP.SJIS'

" ============================================================================
" File:

" viminfoファイルの出力先を指定
set viminfo+=n~/.gviminfo

" 更新内容を元のファイルに上書き
set backupcopy=yes

" ============================================================================
" Colorscheme:

colorscheme pagode

" ============================================================================
" Font:

if has('win32') || has('win64')
  " Windows
  set guifont=Ricty_for_Powerline:h14:cSHIFTJIS
elseif has('mac')
  " Mac
  set guifont=Ricty:h18
else
  " Linux
  set guifont=Ricty\ for\ Powerline\ 12
endif

" 行間隔の設定
set linespace=1

" ============================================================================
" Display:

" ウィンドウの幅
set columns=170

" ウィンドウの高さ
set lines=40

" コマンドラインの高さ(GUI使用時)
set cmdheight=1

" ツールバーを非表示
set guioptions-=T

" メニューバーを非表示
set guioptions-=m

" スクロールバーを非表示
set guioptions-=rL

" テキストベースのタブページを表示
set guioptions-=e

" ============================================================================
" Input Japanese:

if has('multi_byte_ime') || has('xim')
  " 挿入モード・検索モードでのデフォルトのIME状態設定
  set iminsert=0 imsearch=0

  if has('xim') && has('GUI_GTK')
    " XIMの入力開始キーを設定:
    " 下記の s-space はShift+Spaceの意味でkinput2+canna用設定
    " set imactivatekey=s-space
  endif

  " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
  inoremap <silent> <Esc> <Esc>:set iminsert=0<CR>
endif

" ============================================================================
" Mouse:

" どのモードでもマウスを使えるようにする
set mouse=a

" マウスの移動でフォーカスを自動的に切替えない(mousefocus:切替る)
set nomousefocus

" 入力時にマウスポインタを隠す(nomousehide:隠さない)
set mousehide

" ビジュアル選択(D&D他)を自動的にクリップボードへ(:help guioptions_a)
" set guioptions+=a

