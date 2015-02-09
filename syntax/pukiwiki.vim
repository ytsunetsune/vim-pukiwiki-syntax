" Vim syntax file
" Language:   pukiwiki
" Author:     ytsunetsune
" LastChange: 17 January 2014
" License:    MIT license

" 構文のマッチ
syntax region midashi1 start=+^*\{1}+   end=+$+
syntax region midashi2 start=+^*\{2}+   end=+$+
syntax region midashi3 start=+^*\{3}+   end=+$+
syntax region inyou    start=+^>\++     end=+$+
syntax region table    start=+^|.\++    end=+$+
syntax region sharp    start=+^\s*#.\++ end=+$+
syntax region comment  start=+^//+      end=+$+
syntax region code     start=+^\s\{1}.+ end=+$+
syntax match  line     '^-\{-4,}$'
syntax match  list1    '^\(-\|+\)\{1}\ze[^-]\+\|^:'
syntax match  list2    '^\(-\|+\)\{2}\ze[^-]\+'
syntax match  list3    '^\(-\|+\)\{3}\ze[^-]\+'
syntax match  cr       '\~$'
syntax match  andcomm  '&.\+;\|&.\+(.\+);\|&.\+(.\+){.\+};'
syntax match  bolds    '"[^"]\+"\{1}'
syntax match  italics  '"".\+""'
syntax match  kyocho   '%%.\+%%\|((.\+))'
syntax match  link     '\[\{2}.\+\]\{2}'

" 構文に対するハイライトの割り当て
highlight midashi1 guifg=#8aae80
highlight midashi2 guifg=#8abea0
highlight midashi3 guifg=#8acec0
highlight list1    guifg=#c7aa80
highlight list2    guifg=#b7aa50
highlight list3    guifg=#a7aa20
highlight bolds    gui=bold
highlight italics  gui=italic
highlight link line    StatusLine
highlight link inyou   String
highlight link table   Special
highlight link comment Comment
highlight link kyocho  Constant
highlight link link    Underlined
highlight link code    String
highlight link sharp   Statement
highlight link andcomm Statement
highlight link cr      Type

" ファイルタイプを指定
let b:current_syntax = "pukiwiki"
