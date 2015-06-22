" Vim configuration file to specify the color scheme
" Maintainer: raomito

let s:mag = [ ['#AF005F', 125] ]
let s:red = [ ['#AF0000', 124] ]
let s:orn = [ ['#AF5F00', 130] ]
let s:yel = [ ['#AFAF00', 142] ]
let s:grn = [ ['#00AF00',  34] ]
let s:blu = [ ['#005FAF',  25] ]
let s:vio = [ ['#5F00AF',  55] ]
let s:blk = [ ['#1C1C1C', 234], ['#262626', 235] ]
let s:gry = [ ['#6C6C6C', 242], ['#767676', 243] ]
let s:wht = [ ['#B2B2B2', 249], ['#DADADA', 253] ]

let s:p = {
\ 'normal': {
\   'left':   [ [ s:wht[1], s:vio[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[1], s:vio[0] ], [ s:blk[0], s:wht[0] ] ],
\   'middle': [ [ s:gry[1], s:blk[1] ] ],
\ },
\ 'inactive': {
\   'left':   [ [ s:wht[0], s:gry[0] ] ],
\   'right':  [ [ s:wht[0], s:gry[0] ] ],
\   'middle': [ [ s:gry[1], s:blk[1] ] ],
\ },
\ 'insert': {
\   'left':   [ [ s:wht[1], s:grn[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[1], s:grn[0] ], [ s:blk[0], s:wht[0] ] ],
\ },
\ 'visual': {
\   'left':   [ [ s:wht[1], s:blu[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[1], s:blu[0] ], [ s:blk[0], s:wht[0] ] ],
\ },
\ 'replace': {
\   'left':   [ [ s:wht[1], s:mag[0] ], [ s:blk[0], s:wht[0] ] ],
\   'right':  [ [ s:wht[1], s:mag[0] ], [ s:blk[0], s:wht[0] ] ],
\ },
\ 'tabline': {
\   'left':   [ [ s:wht[1], s:vio[0] ], [ s:wht[0], s:gry[0] ] ],
\   'right':  [ [ s:wht[1], s:vio[0] ] ],
\   'middle': [ [ s:gry[1], s:blk[1] ] ],
\   'tabsel': [ [ s:wht[1], s:orn[0] ] ],
\ },
\}

let g:lightline#colorscheme#pagode#palette = lightline#colorscheme#flatten(s:p)
