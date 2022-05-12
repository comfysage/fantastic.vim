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
hi! link EndOfBuffer TabLine

hi TabLineFill ctermbg=Black ctermfg=White cterm=NONE
hi TabLineSel ctermbg=Black ctermfg=Red cterm=NONE
hi TabLine ctermbg=Black ctermfg=White cterm=NONE

hi! link ModeMsg Red

hi Cursor ctermbg=Yellow
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
hi! link Special LightYellow
hi! link PreProc LightBlue
hi! link Boolean Magenta
hi! link Variable LightMagenta
hi! link String Blue
hi! link Keyword Red
hi! link Function Green 

"  }}}

" Operator {{{
hi! link Noise            Gray
hi! link Operator         Statement
hi! link LineNr           Noise
hi! link FoldColumn       TabLine
hi! link SignColumn       LineNr
" }}}

" Constant {{{
hi! link Character        Constant
hi! link Number           Constant
hi Float ctermbg=DarkGray
hi! link Directory        Constant
hi! link Title            Constant
" }}}

" Statement {{{
hi! link Include          Statement
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Exception        Statement
" }}}

" ErrorMsg {{{
hi ErrorMsg ctermfg=Red
hi! link Error            ErrorMsg
hi! link Question         ErrorMsg
" }}}
" WarningMsg {{{
hi WarningMsg ctermfg=Red
" }}}
" MoreMsg {{{
hi MoreMsg ctermfg=Gray cterm=bold
hi! link ModeMsg          MoreMsg
" }}}

" NonText {{{
hi NonText ctermfg=Gray
hi! link Conceal          NonText
hi! link qfLineNr         NonText
" }}}

" Search {{{
hi IncSearch ctermbg=Yellow ctermfg=Black
hi! link Search IncSearch
" }}}

" Visual {{{
hi Visual ctermbg=LightYellow ctermfg=Black
" }}}
" VisualNOS {{{
hi VisualNOS ctermbg=DarkGray
" }}}

" DiffAdd {{{
hi DiffAdd ctermfg=Green
" }}}
" DiffDelete {{{
hi DiffDelete ctermfg=Red
" }}}
" DiffChange {{{
hi DiffChange ctermfg=Yellow
" }}}
" DiffText {{{
hi DiffText ctermfg=Blue
" }}}

" helpHyperText {{{
hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String
" }}}

" StatuslineMsg {{{
hi StatusLineOk cterm=underline ctermbg=Black ctermfg=Cyan
hi StatusLineError cterm=underline ctermbg=Black ctermfg=Red
hi StatusLineWarning cterm=underline ctermbg=Black ctermfg=Yellow
" }}}

" Pmenu {{{
" call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
hi PmenuSel ctermfg=Black ctermbg=Magenta
hi! link Pmenu            TabLine
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
" }}}

" CursorColumn {{{
hi! link CursorColumn CursorLine
" }}}

" MatchParen {{{
hi MatchParen ctermbg=LightGray ctermfg=White
" }}}

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd
hi link yamlBlockMappingKey Statement

hi link NERDTreeFile      White

" HTML Headers {{{
hi! link htmlH1 Green
hi! link htmlH2 Red
hi! link htmlH3 Magenta
hi! link htmlH4 Yellow
hi! link htmlH5 Blue
hi! link htmlH6 Cyan
" }}}

" Signify, git-gutter {{{
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr
" }}}

" Javascript {{{
hi link jsFlowTypeKeyword Statement
hi link jsFlowImportType Statement
hi link jsFunction Keyword
hi link jsFuncName Function
hi link jsGlobalObjects Normal
hi link jsGlobalNodeObjects Normal
hi link jsArrowFunction Noise
hi link jsVariableDef Variable
hi link jsStorageClass StorageClass
hi link StorageClass Statement
" }}}

" XML {{{
hi link xmlTag Constant
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag
" }}}

" Markdown {{{

hi link markdownH1 htmlH1
hi link markdownH2 htmlH2
hi link markdownH3 htmlH3
hi link markdownH4 htmlH4
hi link markdownH5 htmlH5
hi link markdownH6 htmlH6
hi link markdownBold Yellow
hi link markdownBoldDelimiter markdownBold
hi link markdownItalic Cyan
hi link markdownItalicDelimiter markdownItalic
hi link markdownUrl LightBlue
hi link markdownLinkDelimiter Blue
hi link markdownLinkText LightYellow
hi link markdownListMarker LightYellow
hi link markdownCode LightMagenta
hi link markdownCodeBlock markdownCode
hi link markdownCodeDelimiter markdownCode
hi link markdownHeadingDelimiter Constant

" }}}

" VimWiki {{{
hi link VimwikiHeader1 markdownH1
hi link VimwikiHeader2 markdownH2
hi link VimwikiHeader3 markdownH3
" }}}

" Vim {{{
hi link vimHighlight Statement
hi link vimFunction Function
hi link vimVar Variable
hi link vimLet Statement
hi link vimFuncName Variable
hi link vimUserFunc vimFuncName
hi link vimOper vimHighlight
hi link helpExample markdownCodeBlock
" }}}

" Dosini {{{
hi link dosiniHeader Statement
hi link dosiniLabel Constant
hi link dosiniValue Variable
" }}}

" Python {{{

hi link pythonOperator Operator
hi link pythonInclude Include
hi link pythonStatement Statement
hi link pythonConditional Conditional
hi link pythonRepeat Repeat
hi link pythonException Exception
hi link pythonFunction Function

" }}}

" Go {{{

hi link goStatement Statement
hi link goConditional Conditional
hi link goRepeat Repeat
hi link goException Exception
hi link goConstants Constant
hi link goDeclaration Statement
hi link goBuiltins Include

" }}}

" Coffee {{{

hi link coffeeKeyword Keyword
hi link coffeeConditional Conditional

" }}}

" Ruby {{{

hi link rubyAttribute              Identifier
hi link rubyInclude                Include
hi link rubyLocalVariableOrMethod  Method
hi link rubyCurlyBlock             Keyword
hi link rubyConstant               Constant
" hi link rubyInterpolation          
" hi link rubyInterpolationDelimiter 
" hi link rubyRegexp
" hi link rubySymbol                 
hi link rubyStringDelimiter        String
hi link rubyConditional            Conditonal
hi link rubyRepeat                 Repeat

" }}}

" ALE {{{
hi link ALEWarning WarningMsg
hi link ALEWarningSign WarningMsg
hi link ALEError ErrorMsg
hi link ALEErrorSign ErrorMsg
hi link ALEInfo InfoMsg
hi link ALEInfoSign InfoMsg
" }}}

" SQL {{{
hi link sqlStatement Statement
hi link sqlKeyword Keyword
" }}}

