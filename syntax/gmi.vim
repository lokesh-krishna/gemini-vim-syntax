" Vim syntax file
" " Language: gemini
" " Maintainer: sloum < sloum AT rawtext.club >
" " Latest Revision: 02 February 2020

if exists("b:current_syntax")
  finish
endif

" Handle monospaced blocks
syn region Special start="```" end="```"

" Handle between one and three heading levels
syn match Constant /^#\{1,3}.*$/

" Start a link line
syn match Todo /^=>/ nextgroup=Underlined skipwhite

" An extremely naive way of handling the URL portion of the link line
" TODO think about improving this
syn match Underlined /\S\+/ contained nextgroup=String skipwhite

syn match String /.*$/ contained

" Handle list items
syn match Identifier /^\*.*$/

syn match Ignore /^77/
syn match String /^88/
syn match Comment /^99/



let b:current_syntax = "gmi"
