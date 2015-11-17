" Vim configuration file to specify the color scheme
" Maintainer: raomito

let s:red = [ ['#AF005F', 125] ]
let s:orn = [ ['#AF5F00', 130] ]
let s:yel = [ ['#AFAF00', 142] ]
let s:grn = [ ['#00AF00',  34] ]
let s:blu = [ ['#005FAF',  25] ]
let s:vio = [ ['#5F00AF',  55] ]
let s:blk = [ ['#1C1C1C', 234] ]
let s:gry = [ ['#3A3A3A', 237], ['#5F5F5F',  59] ]
let s:wht = [ ['#AFAFAF', 145], ['#B2B2B2', 249], ['#D7D7D7', 188] ]

let s:p = {
\ 'normal': {
\   'left':   [ [ s:wht[2], s:vio[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[2], s:vio[0] ], [ s:blk[0], s:wht[0] ] ],
\   'middle': [ [ s:wht[1], s:gry[0] ] ],
\ },
\ 'inactive': {
\   'left':   [ [ s:wht[1], s:gry[1] ] ],
\   'right':  [ [ s:wht[1], s:gry[1] ] ],
\   'middle': [ [ s:gry[1], s:gry[0] ] ],
\ },
\ 'insert': {
\   'left':   [ [ s:wht[2], s:grn[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[2], s:grn[0] ], [ s:blk[0], s:wht[0] ] ],
\ },
\ 'visual': {
\   'left':   [ [ s:wht[2], s:blu[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[2], s:blu[0] ], [ s:blk[0], s:wht[0] ] ],
\ },
\ 'replace': {
\   'left':   [ [ s:wht[2], s:red[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[2], s:red[0] ], [ s:blk[0], s:wht[0] ] ],
\ },
\ 'tabline': {
\   'left':   [ [ s:wht[2], s:vio[0] ], [ s:wht[1], s:gry[1] ] ],
\   'right':  [ [ s:wht[2], s:vio[0] ] ],
\   'middle': [ [ s:wht[1], s:gry[0] ] ],
\   'tabsel': [ [ s:wht[2], s:orn[0] ] ],
\ },
\}

let g:lightline#colorscheme#pagode#palette = lightline#colorscheme#flatten(s:p)
