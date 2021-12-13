hi clear
syntax reset
set notermguicolors
let g:colors_name = 'walh-eighties'

let s:gray = 7
let s:darkgray = 8
let s:red = 9
let s:green = 10
let s:yellow = 11
let s:blue = 12
let s:magenta = 13
let s:cyan = 14
let s:orange = 16
let s:black = 18

exec "source " . expand('<sfile>:p:h') . "/helpers/highlights.vim"

function! s:hi(group, fg='NONE', bg='NONE', attr='NONE')
  if a:fg != ''
    exec 'hi ' . a:group . ' ctermfg=' . a:fg
  endif
  if a:bg != ''
    exec 'hi ' . a:group . ' ctermbg=' . a:bg
  endif
  if a:attr != ''
    exec 'hi ' . a:group . ' cterm=' . a:attr
  endif
endfunction

" -- group-name
" call s:hi('Comment', 'darkgray')
call s:hi('Identifier', s:blue)
call s:hi('Function', s:green)

call s:hi('Constant', s:magenta)
call s:hi('String', s:green)
call s:hi('Character', s:magenta)
call s:hi('Number', s:magenta)
call s:hi('Boolean', s:magenta)
call s:hi('Float', s:magenta)

call s:hi('Statement', s:red)
call s:hi('Conditional', s:red)
call s:hi('Repeat', s:red)
call s:hi('Label', s:red)

call s:hi('Operator', '', '')
call s:hi('Keyword', s:red)
call s:hi('Exception', s:red)

call s:hi('PreProc', s:cyan)
call s:hi('Include', s:cyan)
call s:hi('Define', s:cyan)
call s:hi('Macro', s:cyan)
call s:hi('PreCondit', s:cyan)

call s:hi('Type', s:yellow)
call s:hi('StorageClass', s:orange)
call s:hi('Structure', s:cyan)
call s:hi('Typedef', s:yellow)

call s:hi('Special', s:orange)
call s:hi('SpecialChar', s:orange)
