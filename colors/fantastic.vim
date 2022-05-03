" Name:       fantastic.vim
" Version:    0.1
" Maintainer: github.com/CrispyBaccoon

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='fantastic'

let s:p = {}

let s:p.black       = { "gui": "#161821" }

let s:red           = { "gui": "#E27878" }
let s:green         = { "gui": "#B4BE82" }
let s:yellow        = { "gui": "#E2A478" }
let s:blue          = { "gui": "#84A0C6" }
let s:magenta       = { "gui": "#A093C7" }
let s:cyan          = { "gui": "#89B8C2" }
let s:p.white       = { "gui": "#C6C8D1" }
let s:gray          = { "gui": "#3A3A4D" }

let s:p.light_red     = { "gui": "#DC888A" }
let s:p.light_green   = { "gui": "#B8C092" }
let s:p.light_yellow  = { "gui": "#DCAB8A" }
let s:p.light_blue    = { "gui": "#91A8C8" }
let s:p.light_magenta = { "gui": "#A89EC9" }
let s:p.light_cyan    = { "gui": "#95BBC5" }
let s:p.light_gray    = { "gui": "#484a53" }

let s:p.dark_red      = { "gui": "#B96567" }
let s:p.dark_green    = { "gui": "#949D6F" }
let s:p.dark_yellow   = { "gui": "#B98867" }
let s:p.dark_blue     = { "gui": "#6E85A5" }
let s:p.dark_magenta  = { "gui": "#847AA6" }
let s:p.dark_cyan     = { "gui": "#7298A2" }
let s:p.dark_gray     = { "gui": "#2f313a" }

if &background == 'dark'

  let s:black = s:p.black
  let s:white = s:p.white

  let s:light_red     = s:p.light_red
  let s:light_green   = s:p.light_green
  let s:light_yellow  = s:p.light_yellow
  let s:light_blue    = s:p.light_blue
  let s:light_magenta = s:p.light_magenta
  let s:light_cyan    = s:p.light_cyan
  let s:light_gray    = s:p.light_gray
                                          
  let s:dark_red      = s:p.dark_red
  let s:dark_green    = s:p.dark_green
  let s:dark_yellow   = s:p.dark_yellow
  let s:dark_blue     = s:p.dark_blue
  let s:dark_magenta  = s:p.dark_magenta
  let s:dark_cyan     = s:p.dark_cyan
  let s:dark_gray     = s:p.dark_gray
else

  let s:black = s:p.white
  let s:white = s:p.black

  let s:light_red     = s:p.dark_red
  let s:light_green   = s:p.dark_green
  let s:light_yellow  = s:p.dark_yellow
  let s:light_blue    = s:p.dark_blue
  let s:light_magenta = s:p.dark_magenta
  let s:light_cyan    = s:p.dark_cyan
  let s:light_gray    = s:p.dark_gray
                                          
  let s:dark_red      = s:p.light_red
  let s:dark_green    = s:p.light_green
  let s:dark_yellow   = s:p.light_yellow
  let s:dark_blue     = s:p.light_blue
  let s:dark_magenta  = s:p.light_magenta
  let s:dark_cyan     = s:p.light_cyan
  let s:dark_gray     = s:p.light_gray
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    " \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    " \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    " \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

"  Colors
call s:h("Red",           { "fg": s:red, "gui": "NONE" })
call s:h("Green",         { "fg": s:green, "gui": "NONE" })
call s:h("Yellow",        { "fg": s:yellow, "gui": "NONE" })
call s:h("Blue",          { "fg": s:blue, "gui": "NONE" })
call s:h("Magenta",       { "fg": s:magenta, "gui": "NONE" })
call s:h("Cyan",          { "fg": s:cyan, "gui": "NONE" })
call s:h("White",         { "fg": s:white, "gui": "NONE" })
call s:h("Gray",          { "fg": s:gray, "gui": "NONE" })

call s:h("LightRed",      { "fg": s:light_red, "gui": "NONE" })
call s:h("LightGreen",    { "fg": s:light_green, "gui": "NONE" })
call s:h("LightYellow",   { "fg": s:light_yellow, "gui": "NONE" })
call s:h("LightBlue",     { "fg": s:light_blue, "gui": "NONE" })
call s:h("LightMagenta",  { "fg": s:light_magenta, "gui": "NONE" })
call s:h("LightCyan",     { "fg": s:light_cyan, "gui": "NONE" })
call s:h("LightGray",     { "fg": s:light_gray, "gui": "NONE" })

call s:h("DarkRed",       { "fg": s:dark_red, "gui": "NONE" })
call s:h("DarkGreen",     { "fg": s:dark_green, "gui": "NONE" })
call s:h("DarkYellow",    { "fg": s:dark_yellow, "gui": "NONE" })
call s:h("DarkBlue",      { "fg": s:dark_blue, "gui": "NONE" })
call s:h("DarkMagenta",   { "fg": s:dark_magenta, "gui": "NONE" })
call s:h("DarkCyan",      { "fg": s:dark_cyan, "gui": "NONE" })
call s:h("DarkGray",      { "fg": s:dark_gray, "gui": "NONE" })

" Basic UI {{{

call s:h("Normal",     { "bg": s:black, "fg": s:white, "gui": "NONE" })
hi! link VertSplit   White
hi! link LineNr      Gray
hi! link EndOfBuffer TabLine

call s:h("TabLineFill",{ "bg": s:black, "fg": s:white, "gui": "NONE" })
call s:h("TabLineSel", { "bg": s:black, "fg": s:red  , "gui": "NONE" })
call s:h("TabLine",    { "bg": s:black, "fg": s:white, "gui": "NONE" })

hi! link ModeMsg Red

call s:h("Cursor", { "bg": s:yellow })
call s:h("CursorLine", { "bg": s:dark_magenta, "gui": "NONE" })
call s:h("CursorLineNr", { "fg": s:yellow })

call s:h("Comment", { "fg": s:gray })
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
hi! link Boolean Magenta
hi! link Variable LightMagenta
hi! link String Blue
hi! link Keyword Red
hi! link Function Green 
" }}}

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
" hi! link Float            Constant
call s:h("Float",         {"bg": s:dark_gray})
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
call s:h("ErrorMsg",      {"fg": s:red})
hi! link Error            ErrorMsg
hi! link Question         ErrorMsg
" }}}
" WarningMsg {{{
call s:h("WarningMsg",    {"fg": s:red})
" }}}
" MoreMsg {{{
call s:h("MoreMsg",       {"fg": s:gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg          MoreMsg
" }}}

" NonText {{{
call s:h("NonText",       {"fg": s:gray})
hi! link Conceal          NonText
hi! link qfLineNr         NonText
" }}}

" Search {{{
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:black, "gui": "NONE"})
hi! link Search IncSearch
" }}}

" Visual {{{
call s:h("Visual",     {"bg": s:light_yellow, "fg": s:black, "gui": "NONE"})
" }}}
" VisualNOS {{{
call s:h("VisualNOS",     {"bg": s:dark_gray})
" }}}

" DiffAdd {{{
call s:h("DiffAdd",       {"fg": s:green})
" }}}
" DiffDelete {{{
call s:h("DiffDelete",    {"fg": s:red})
" }}}
" DiffChange {{{
call s:h("DiffChange",    {"fg": s:yellow})
" }}}
" DiffText {{{
call s:h("DiffText",      {"fg": s:blue})
" }}}

" helpHyperText {{{
hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String
" }}}

" StatuslineMsg {{{
call s:h("StatusLineOk",      {"gui": "underline", "bg": s:black, "fg": s:cyan})
call s:h("StatusLineError",   {"gui": "underline", "bg": s:black, "fg": s:red})
call s:h("StatusLineWarning", {"gui": "underline", "bg": s:black, "fg": s:yellow})
" }}}

" Pmenu {{{
" call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
call s:h("PmenuSel", {"fg": s:black, "bg": s:magenta})
hi! link Pmenu            TabLine
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
" }}}

" CursorColumn {{{
hi! link CursorColumn CursorLine
" }}}

" MatchParen {{{
call s:h("MatchParen",    {"bg": s:light_gray, "fg": s:white})
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

" Statusline {{{
call s:h("StatusLine", {"fg": s:gray, "bg": s:black})
" hi StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=NONE guibg=#17181b guifg=#818696 term=reverse
" hi StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=NONE guibg=#17181b guifg=#818696 term=reverse
" hi StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=NONE guibg=#545a71 guifg=#22242e
" hi StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=NONE guibg=#545a71 guifg=#22242e
" }}}

