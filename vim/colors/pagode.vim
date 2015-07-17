" Vim configuration file to specify the color scheme
" Maintainer: raomito
" Note: Based on the Molokai theme for Vim

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'pagode'

hi Comment            cterm=NONE      ctermfg=242      ctermbg=NONE      gui=NONE      guifg=#6C6C6C      guibg=NONE
hi Constant           cterm=NONE      ctermfg=140      ctermbg=NONE      gui=NONE      guifg=#AF87D7      guibg=NONE
hi String             cterm=NONE      ctermfg=186      ctermbg=NONE      gui=NONE      guifg=#D7D787      guibg=NONE
hi Character          cterm=NONE      ctermfg=186      ctermbg=NONE      gui=NONE      guifg=#D7D787      guibg=NONE
hi Number             cterm=NONE      ctermfg=140      ctermbg=NONE      gui=NONE      guifg=#AF87D7      guibg=NONE
hi Boolean            cterm=NONE      ctermfg=140      ctermbg=NONE      gui=NONE      guifg=#AF87D7      guibg=NONE
hi Float              cterm=NONE      ctermfg=140      ctermbg=NONE      gui=NONE      guifg=#AF87D7      guibg=NONE
hi Identifier         cterm=NONE      ctermfg=166      ctermbg=NONE      gui=NONE      guifg=#D75F00      guibg=NONE
hi Function           cterm=NONE      ctermfg=40       ctermbg=NONE      gui=NONE      guifg=#00D700      guibg=NONE
hi Statement          cterm=NONE      ctermfg=161      ctermbg=NONE      gui=NONE      guifg=#D7005F      guibg=NONE
hi Conditional        cterm=NONE      ctermfg=161      ctermbg=NONE      gui=NONE      guifg=#D7005F      guibg=NONE
hi Repeat             cterm=NONE      ctermfg=161      ctermbg=NONE      gui=NONE      guifg=#D7005F      guibg=NONE
hi Label              cterm=NONE      ctermfg=186      ctermbg=NONE      gui=NONE      guifg=#D7D787      guibg=NONE
hi Operator           cterm=NONE      ctermfg=161      ctermbg=NONE      gui=NONE      guifg=#D7005F      guibg=NONE
hi Keyword            cterm=NONE      ctermfg=161      ctermbg=NONE      gui=NONE      guifg=#D7005F      guibg=NONE
hi Exception          cterm=NONE      ctermfg=40       ctermbg=NONE      gui=NONE      guifg=#00D700      guibg=NONE
hi PreProc            cterm=NONE      ctermfg=40       ctermbg=NONE      gui=NONE      guifg=#00D700      guibg=NONE
hi Include            cterm=NONE      ctermfg=40       ctermbg=NONE      gui=NONE      guifg=#00D700      guibg=NONE
hi Define             cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi Macro              cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi PreCondit          cterm=NONE      ctermfg=40       ctermbg=NONE      gui=NONE      guifg=#00D700      guibg=NONE
hi Type               cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi StorageClass       cterm=NONE      ctermfg=166      ctermbg=NONE      gui=NONE      guifg=#D75F00      guibg=NONE
hi Structure          cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi Typedef            cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi Special            cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi SpecialChar        cterm=NONE      ctermfg=161      ctermbg=NONE      gui=NONE      guifg=#D7005F      guibg=NONE
hi Tag                cterm=NONE      ctermfg=161      ctermbg=NONE      gui=NONE      guifg=#D7005F      guibg=NONE
hi Delimiter          cterm=NONE      ctermfg=242      ctermbg=NONE      gui=NONE      guifg=#6C6C6C      guibg=NONE
hi SpecialComment     cterm=NONE      ctermfg=56       ctermbg=NONE      gui=NONE      guifg=#5F00D7      guibg=NONE
hi Debug              cterm=NONE      ctermfg=253      ctermbg=NONE      gui=NONE      guifg=#DADADA      guibg=NONE
hi Underlined         cterm=underline ctermfg=44       ctermbg=NONE      gui=underline guifg=#00D7D7      guibg=NONE
hi Ignore             cterm=NONE      ctermfg=242      ctermbg=NONE      gui=NONE      guifg=#6C6C6C      guibg=NONE
hi Error              cterm=NONE      ctermfg=NONE     ctermbg=124       gui=NONE      guifg=NONE         guibg=#AF0000
hi Todo               cterm=NONE      ctermfg=184      ctermbg=NONE      gui=NONE      guifg=#D7D700      guibg=NONE
hi ColorColumn        cterm=NONE      ctermfg=NONE     ctermbg=56        gui=NONE      guifg=NONE         guibg=#5F00D7
hi Conceal            cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi Cursor             cterm=NONE      ctermfg=232      ctermbg=253       gui=NONE      guifg=#080808      guibg=#DADADA
hi CursorIM           cterm=NONE      ctermfg=NONE     ctermbg=124       gui=NONE      guifg=NONE         guibg=#AF0000
hi CursorColumn       cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi CursorLine         cterm=NONE      ctermfg=NONE     ctermbg=232       gui=NONE      guifg=NONE         guibg=#080808
hi Directory          cterm=NONE      ctermfg=40       ctermbg=NONE      gui=NONE      guifg=#00D700      guibg=NONE
hi DiffAdd            cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi DiffChange         cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi DiffDelete         cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi DiffText           cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi ErrorMsg           cterm=NONE      ctermfg=NONE     ctermbg=124       gui=NONE      guifg=NONE         guibg=#AF0000
hi VertSplit          cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi Folded             cterm=NONE      ctermfg=44       ctermbg=235       gui=NONE      guifg=#00D7D7      guibg=#262626
hi FoldColumn         cterm=NONE      ctermfg=NONE     ctermbg=234       gui=NONE      guifg=NONE         guibg=#1C1C1C
hi SignColumn         cterm=NONE      ctermfg=NONE     ctermbg=234       gui=NONE      guifg=NONE         guibg=#1C1C1C
hi IncSearch          cterm=NONE      ctermfg=NONE     ctermbg=130       gui=NONE      guifg=NONE         guibg=#AF5F00
hi LineNr             cterm=NONE      ctermfg=242      ctermbg=235       gui=NONE      guifg=#6C6C6C      guibg=#262626
hi CursorLineNr       cterm=NONE      ctermfg=166      ctermbg=235       gui=NONE      guifg=#D75F00      guibg=#262626
hi MatchParen         cterm=NONE      ctermfg=NONE     ctermbg=130       gui=NONE      guifg=NONE         guibg=#AF5F00
hi ModeMsg            cterm=NONE      ctermfg=184      ctermbg=NONE      gui=NONE      guifg=#D7D700      guibg=NONE
hi MoreMsg            cterm=NONE      ctermfg=184      ctermbg=NONE      gui=NONE      guifg=#D7D700      guibg=NONE
hi NonText            cterm=NONE      ctermfg=242      ctermbg=NONE      gui=NONE      guifg=#6C6C6C      guibg=NONE
hi Normal             cterm=NONE      ctermfg=253      ctermbg=234       gui=NONE      guifg=#DADADA      guibg=#1C1C1C
hi Pmenu              cterm=NONE      ctermfg=253      ctermbg=55        gui=NONE      guifg=#DADADA      guibg=#5F00AF
hi PmenuSel           cterm=NONE      ctermfg=NONE     ctermbg=232       gui=NONE      guifg=NONE         guibg=#080808
hi PmenuSbar          cterm=NONE      ctermfg=NONE     ctermbg=235       gui=NONE      guifg=NONE         guibg=#262626
hi PmenuThumb         cterm=NONE      ctermfg=NONE     ctermbg=242       gui=NONE      guifg=NONE         guibg=#6C6C6C
hi Question           cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi Search             cterm=NONE      ctermfg=NONE     ctermbg=142       gui=NONE      guifg=NONE         guibg=#AFAF00
hi SpecialKey         cterm=NONE      ctermfg=242      ctermbg=NONE      gui=NONE      guifg=#6C6C6C      guibg=NONE
hi SpellBad           cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi SpellCap           cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi SpellLocal         cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi SpellRare          cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi StatusLine         cterm=NONE      ctermfg=253      ctermbg=235       gui=NONE      guifg=#DADADA      guibg=#262626
hi StatusLineNC       cterm=NONE      ctermfg=242      ctermbg=235       gui=NONE      guifg=#6C6C6C      guibg=#262626
hi TabLine            cterm=NONE      ctermfg=253      ctermbg=242       gui=NONE      guifg=#DADADA      guibg=#6C6C6C
hi TabLineFill        cterm=NONE      ctermfg=NONE     ctermbg=234       gui=NONE      guifg=NONE         guibg=#1C1C1C
hi TabLineSel         cterm=NONE      ctermfg=253      ctermbg=166       gui=NONE      guifg=#DADADA      guibg=#D75F00
hi Title              cterm=NONE      ctermfg=166      ctermbg=NONE      gui=NONE      guifg=#D75F00      guibg=NONE
hi Visual             cterm=NONE      ctermfg=NONE     ctermbg=236       gui=NONE      guifg=NONE         guibg=#303030
hi VisualNOS          cterm=NONE      ctermfg=NONE     ctermbg=236       gui=NONE      guifg=NONE         guibg=#303030
hi WarningMsg         cterm=NONE      ctermfg=184      ctermbg=NONE      gui=NONE      guifg=#D7D700      guibg=NONE
hi WildMenu           cterm=NONE      ctermfg=44       ctermbg=NONE      gui=NONE      guifg=#00D7D7      guibg=NONE
hi Menu               cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi Scrollbar          cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE
hi Tooltip            cterm=NONE      ctermfg=NONE     ctermbg=NONE      gui=NONE      guifg=NONE         guibg=NONE

