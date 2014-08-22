" Vim syntax file
" " Language: yang
" " Maintainer: Pravin Gohite 
" " Latest Revision:  August 21, 2014
"
if exists("b:current_syntax")
  finish
endif

syn case ignore
setlocal iskeyword+=-

syn match yId       "[a-zA-Z0-9_-]+"

syn keyword yKeywordsId module submodule container feature
syn keyword yKeywordsId grouping rpc notification
syn keyword yKeywordsId leaf list
syn keyword yKeywordsId rpc notification

syn keyword yBool true false
syn keyword yType string int int8 int16 int32 int64 
syn keyword yType boolean uint8 uint16 uint32 uint64 
syn keyword yType enumeration enum

syn keyword yKeywords if-feature when must belongs-to
syn keyword yKeywords import include prefix namespace
syn keyword yKeywords choice case when must path 
syn keyword yKeywords refine deviate base
syn keyword yKeywords uses augment extention
syn keyword yKeywords presence config mandatory 

syn keyword yKeywordsStr description revision reference
syn keyword yKeywordsStr organization contact key

syn keyword yKeywordsType typedef identity
syn keyword yKeywordsType range max-element min-element
syn keyword yKeywordsType default length
syn keyword yKeywordsType type empty
syn keyword yKeywordsType leaf leaflist leafref identityref

syn match yComment /\/\/.*/
syn match yIdentifier /\<\l\+\>/
syn match yDelimiters /[();\\]/
syn match yBrace      /[{}]/

syn region yString start=/"/ skip=/\\"/ end=/"/
syn region yCommentMulti start="/\*"  end="\*/"
syn keyword yKeywordsStr organization contact nextgroup=yString
syn keyword yKeywordsStr description revision reference nextgroup=yString
syn keyword yKeywordsStr namespace nextgroup=yString

hi link yString String
hi link yComment Comment
hi link yCommentMulti Comment
hi link yId  Identifier
hi link yKeywords Keyword
hi link yKeywordsId Keyword
hi link yKeywordsStr Keyword
hi link yKeywordsStmt Statement
hi link yKeywordsType Type
hi link yType Type
hi link yBool Boolean
hi link yIdentifier Identifier
hi link yDelimiters Delimiter
hi link yBrace Delimiter

let b:current_syntax = "yang"
