" Vim syntax file
" Language: Smallworld Magik
" Maintainer: Steven Looman
" Latest Revision: 13 December 2023
" From: http://vim.wikia.com/wiki/Creating_your_own_syntax_files

if exists("b:current_syntax")
  finish
endif

" Comments
syn keyword magikTodo contained TODO FIXME XXX
syn match magikComment "#.*$" contains=magikTodo

" Keywords
syn keyword magikKeyword _package
syn keyword magikKeyword _pragma
syn keyword magikKeyword _handling _default
syn keyword magikKeyword _block _endblock
syn keyword magikKeyword _protect _protection _endprotect
syn keyword magikKeyword _try _with _when _endtry
syn keyword magikKeyword _catch _endcatch
syn keyword magikKeyword _throw
syn keyword magikKeyword _lock _endlock
syn keyword magikKeyword _proc _endproc
syn keyword magikKeyword _if _then _elif _else _endif
syn keyword magikKeyword _for _over
syn keyword magikKeyword _while
syn keyword magikKeyword _loop _endloop _loopbody
syn keyword magikKeyword _continue _leave _return
syn keyword magikKeyword _local _constant _recursive
syn keyword magikKeyword _global _dynamic
syn keyword magikKeyword _import
syn keyword magikKeyword _private _iter _abstract
syn keyword magikKeyword _method _endmethod
syn keyword magikKeyword _gather _scatter _allresults _optional
syn keyword magikKeyword _is _isnt _not
syn keyword magikKeyword _and _or _xor _cf
syn keyword magikKeyword _andif _orif
syn keyword magikKeyword _div _mod
syn keyword magikKeyword _thisthread
syn keyword magikKeyword _self _clone _super
syn keyword magikKeyword _primitive
syn keyword magikKeyword _unset _true _false _maybe

" Blocks
syn region magikBlockBlock start="_block" end="_endblock" fold transparent
syn region magikProtectBlock start="_protect" end="_endprotect" fold transparent
syn region magikTryBlock start="_try" end="_endtry" fold transparent
syn region magikIfBlock start="_if" end="_endif" fold transparent
syn region magikLoopBlock start="_loop" end="_endloop" fold transparent
syn region magikLockBlock start="_lock" end="_endlock" fold transparent
syn region magikMethodBlock start="_method" end="_endmethod" fold transparent
syn region magikProcBlock start="_proc" end="_endproc" fold transparent

" Strings/numbers/...
syn region magikString start='"' end='"'
syn region magikString start="'" end="'"
syn match magikSymbol ':[0-9a-zA-Z_]+'
syn match magikNumber '\d\+'
syn match magikNumber '[-+]\d\+'
syn match magikNumber '\d\+\.\d*'
syn match magikNumber '[-+]\d\+\.\d*'



let b:current_syntax = "magik"

hi def link magikTodo        Todo
hi def link magikComment     Comment
hi def link magikKeyword     Statement
hi def link magikString      Constant
hi def link magikSymbol      Constant
hi def link magikNumber      Constant
