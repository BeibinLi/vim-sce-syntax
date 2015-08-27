" Vim syntax file for Presentation Language SCE
" Beibin Li
" Date: Aug. 27 2015


if exists("b:current_syntax")
	finish
endif

syn keyword sceInclude include include_once
syn keyword sceType int string double bool

" Comments
syn keyword sceTodo contained TODO FIXME *** ??? NOTE MARK
syn match sceComment "#.*$" contains=sceTodo


"  Numbers: Including Integer and Float precision numbers
syn match scenumber 'false'
syn match scenumber 'true'
syn match sceNumber '\d\+'
syn match sceNumber '[-+]\d\+'
syn match sceNumber '\d\+\.\d*'
syn match sceNumber '[-+]\d\+\.\d*'
syn match sceNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match sceNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match sceNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match sceNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

syn region sceString start='"' end='"'

" syn region sceFunction start="sub" end="end" fold transparent
" syn region sceForLoop start="loop" end="until" contains=sceType, sceNumber, sceString, sceTodo, sceComment
" syn region sceBeginEnd start="begin" end="end"  contains=sceType, sceNumber, sceString, sceTodo, sceComment
syn keyword sceBlock loop until begin end sub
syn keyword sceBuild term_print term_println array
syn keyword sceLogic if then elseif else end

let b:current_syntax = "sce"

hi def link sceTodo Todo
hi def link sceComment Comment
hi def link sceInclude PreProc
hi def link sceType Type
hi def link sceNumber Constant
hi def link sceString Constant

hi def link sceBlock Statement

hi def link sceBuild Statement
hi def link sceLogic Statement


