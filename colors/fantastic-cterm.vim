" Name:       fantastic-cterm.vim
" Version:    0.1
" Maintainer: github.com/CrispyBaccoon

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='fantastic'

"  Colors
hi Red     ctermfg=Red     cterm=NONE
hi Green   ctermfg=Green   cterm=NONE
hi Yellow  ctermfg=Yellow  cterm=NONE
hi Blue    ctermfg=Blue    cterm=NONE
hi Magenta ctermfg=Magenta cterm=NONE
hi Cyan    ctermfg=Cyan    cterm=NONE
hi White   ctermfg=White   cterm=NONE
hi Gray    ctermfg=Gray    cterm=NONE

hi LightRed     ctermfg=LightRed     cterm=NONE
hi LightGreen   ctermfg=LightGreen   cterm=NONE
hi LightYellow  ctermfg=LightYellow  cterm=NONE
hi LightBlue    ctermfg=LightBlue    cterm=NONE
hi LightMagenta ctermfg=LightMagenta cterm=NONE
hi LightCyan    ctermfg=LightCyan    cterm=NONE
hi LightGray    ctermfg=LightGray    cterm=NONE

hi DarkRed     ctermfg=DarkRed     cterm=NONE
hi DarkGreen   ctermfg=DarkGreen   cterm=NONE
hi DarkYellow  ctermfg=DarkYellow  cterm=NONE
hi DarkBlue    ctermfg=DarkBlue    cterm=NONE
hi DarkMagenta ctermfg=DarkMagenta cterm=NONE
hi DarkCyan    ctermfg=DarkCyan    cterm=NONE
hi DarkGray    ctermfg=DarkGray    cterm=NONE

" Basic UI {{{

hi! link VertSplit White
hi! link LineNr    Gray

hi TabLineFill ctermbg=Black ctermfg=White cterm=NONE
hi TabLineSel ctermbg=Black ctermfg=Red cterm=NONE
hi TabLine ctermbg=Black ctermfg=White cterm=NONE

hi! link ModeMsg Red
hi CursorLine ctermbg=60 cterm=NONE
hi CursorLineNr ctermfg=Yellow cterm=NONE

hi Comment ctermfg=Grey
hi! link Folded Comment

" }}}

" Increase Readability {{{

hi Visual ctermbg=White ctermfg=Black
hi Error	  ctermfg=Black
hi DiffAdd	  ctermfg=Black
hi DiffChange ctermfg=Black
hi DiffDelete ctermfg=Black
hi DiffText	  ctermfg=Black
hi SpellBad	  ctermfg=Black
hi SpellCap	  ctermfg=Black
hi SpellRare  ctermfg=Black
hi SpellLocal ctermfg=Black

hi RedrawDebugClear	    ctermfg=Black
hi RedrawDebugComposed  ctermfg=Black
hi RedrawDebugRecompose ctermfg=Black

hi NvimInternalError ctermfg=Black

" }}}

" Languages {{{

" Syntax
hi! link Identifier Cyan
hi! link Constant Magenta
hi! link Statement Yellow
hi! link Type LightGreen
hi! link Special LightRed
hi! link PreProc LightBlue

"  }}}

hi! link htmlH1 Green
hi! link htmlH2 Red
hi! link htmlH3 Magenta
hi! link htmlH4 Yellow
hi! link htmlH5 Blue
hi! link htmlH6 Cyan

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr

hi link jsFlowTypeKeyword Statement
hi link jsFlowImportType Statement
hi link jsFunction Statement
hi link jsGlobalObjects Normal
hi link jsGlobalNodeObjects Normal
hi link jsArrowFunction Noise
hi link StorageClass Statement

hi link xmlTag Constant
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag

hi link markdownH1 htmlH1
hi link markdownH2 htmlH2
hi link markdownH3 htmlH3
hi link markdownH4 htmlH4
hi link markdownH5 htmlH5
hi link markdownH6 htmlH6
hi link markdownListMarker Constant
hi link markdownCode Constant
hi link markdownCodeBlock Constant
hi link markdownCodeDelimiter Constant
hi link markdownHeadingDelimiter Constant

" hi link yamlBlockMappingKey Statement
" hi link pythonOperator Statement

hi link ALEWarning WarningMsg
hi link ALEWarningSign WarningMsg
hi link ALEError ErrorMsg
hi link ALEErrorSign ErrorMsg
hi link ALEInfo InfoMsg
hi link ALEInfoSign InfoMsg

hi link sqlStatement Statement
hi link sqlKeyword Keyword

hi link wikiHeader1 htmlH1
hi link wikiHeader2 htmlH2
hi link wikiHeader3 htmlH3
hi link wikiHeader4 htmlH4
hi link wikiHeader5 htmlH5
hi link wikiHeader6 htmlH6
hi link wikiList Statement
hi link wikiPre Constant
hi link wikiCode Constant

hi link tsxTag Constant
hi link tsxTagName Constant
hi link tsxCloseTagName Constant
hi link tsxAttrib Constant

hi link jsxTag Constant
hi link jsxTagName Constant
hi link jsxCloseTagName Constant
hi link jsxAttrib Constant
