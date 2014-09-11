"---------------------------------------------------------------------
" $Id: click.vim,v 1.3 2004/08/24 09:53:26 soso Exp $
"
" Vim syntax file
" Language:    click
" Maintainer:  Soeren Sonntag <soeren . sonntag AT web . de>
" Last Change: 2004-08-24
" Description: click (http://www.pdos.lcs.mit.edu/click/) syntax file
"---------------------------------------------------------------------

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" match some keywords
syn keyword     clickStatement  input output elementclass connectiontunnel
syn match       clickStatement  /\zs\<require\ze\s*(/

" match numbers
syn match       clickNumber     /\<\d\+\>/
syn match       clickNumber     /\<\d\+\.\d\+\>/
syn match       clickNumber     /\<0[xX]\x\+\>/

" match hex fields
syn match       clickHexGood    /\<\x\x\>\|\s\+/ contained
syn region      clickHexValues  matchgroup=clickHexParens start=/\\</ end=/>/ contains=clickHexGood

" match separators
syn match       clickOperator   /||\@!\||||\@!/

" match compound variables
syn match       clickVariable   /\$\w\+/

" match instances and classes
syn match       clickInstance   /\zs[A-Za-z0-9_\@]\+\(\/\=[A-Za-z0-9_\@]\)*\ze\s*::/
syn match       clickClass      /::\s*\zs\w\+\>\ze/

" match strings
syn region      clickString     start=/"/ skip=/\\"/ end=/"/

" match comments
syn keyword     clickTodo       Todo contained
syn match       clickComment    /\/\/.*/ contains=clickTodo
syn region      clickComment    start=/\/\*/ end=/\*\// contains=clickTodo

" match addresses of several protocols
syn match       clickIP4        /\<\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}\>/
syn match       clickIP6        /\<\x\{1,4}:\x\{1,4}:\x\{1,4}:\x\{1,4}:\x\{1,4}:\x\{1,4}:\x\{1,4}:\x\{1,4}\>/
syn match       clickEth        /\<\x\{1,2}:\x\{1,2}:\x\{1,2}:\x\{1,2}:\x\{1,2}:\x\{1,2}\>/


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink clickNumber            Number
  HiLink clickStatement         Statement
  HiLink clickComment           Comment
  HiLink clickOperator          Operator 
  HiLink clickVariable          Type
  HiLink clickInstance          Type
  HiLink clickClass             Statement
  HiLink clickString            String
  HiLink clickHexValues         Error
  HiLink clickHexParens         Number
  HiLink clickHexGood           Number
  HiLink clickIP4               Type
  HiLink clickIP6               Type
  HiLink clickEth               Type
  HiLink clickTodo              Todo

  delcommand HiLink
endif

let b:current_syntax = "click"
