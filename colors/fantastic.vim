" Name:       fantastic.vim
" Version:    0.1
" Maintainer: github.com/CrispyBaccoon

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='fantastic'

if g:fantastic_rose_pine == 1
  let s:black  = { "gui": "#232136" }

  let s:red    = { "gui": "#eb6f92" }
  let s:green  = { "gui": "#9ccfd8" }
  let s:yellow = { "gui": "#f6c177" }
  let s:blue   = { "gui": "#3e8fb0" }
  let s:magenta= { "gui": "#c4a7e7" }
  let s:cyan   = { "gui": "#ea9a97" }
  let s:white  = { "gui": "#e0def4" }
  let s:gray   = { "gui": "#706b5f" }

  let s:light_red     = { "gui": "#eb6f92" }
  let s:light_green   = { "gui": "#9ccfd8" }
  let s:light_yellow  = { "gui": "#f6c177" }
  let s:light_blue    = { "gui": "#31748f" }
  let s:light_magenta = { "gui": "#c4a7e7" }
  let s:light_cyan    = { "gui": "#ebbcba" }
  let s:light_gray    = { "gui": "#7d7769" }

  let s:dark_red     = { "gui": "#C28A93" }
  let s:dark_green   = { "gui": "#83AE58" }
  let s:dark_yellow  = { "gui": "#D2A752" }
  let s:dark_blue    = { "gui": "#7F9EBB" }
  let s:dark_magenta = { "gui": "#B49DC9" }
  let s:dark_cyan    = { "gui": "#72A181" }
  let s:dark_gray    = { "gui": "#3f3f43" }
else
  let s:black  = { "gui": "#202330" }

  let s:red    = { "gui": "#eba4ac" }
  let s:green  = { "gui": "#9cd162" }
  let s:yellow = { "gui": "#ffc85b" }
  let s:blue   = { "gui": "#97bdde" }
  let s:magenta= { "gui": "#d9bcef" }
  let s:cyan   = { "gui": "#87c095" }
  let s:white  = { "gui": "#dbcca3" }
  let s:gray   = { "gui": "#706b5f" }

  let s:light_red     = { "gui": "#EEB2AE" }
  let s:light_green   = { "gui": "#AFD673" }
  let s:light_yellow  = { "gui": "#FECE6D" }
  let s:light_blue    = { "gui": "#ABC6D6" }
  let s:light_magenta = { "gui": "#E0C5E4" }
  let s:light_cyan    = { "gui": "#9EC89C" }
  let s:light_gray    = { "gui": "#7d7769" }

  let s:dark_red     = { "gui": "#C28A93" }
  let s:dark_green   = { "gui": "#83AE58" }
  let s:dark_yellow  = { "gui": "#D2A752" }
  let s:dark_blue    = { "gui": "#7F9EBB" }
  let s:dark_magenta = { "gui": "#B49DC9" }
  let s:dark_cyan    = { "gui": "#72A181" }
  let s:dark_gray    = { "gui": "#3f3f43" }
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

call s:h("DarkRed",       { "fg": s:red, "gui": "NONE" })
call s:h("DarkGreen",     { "fg": s:green, "gui": "NONE" })
call s:h("DarkYellow",    { "fg": s:yellow, "gui": "NONE" })
call s:h("DarkBlue",      { "fg": s:blue, "gui": "NONE" })
call s:h("DarkMagenta",   { "fg": s:magenta, "gui": "NONE" })
call s:h("DarkCyan",      { "fg": s:cyan, "gui": "NONE" })
call s:h("DarkGray",      { "fg": s:gray, "gui": "NONE" })

" Basic UI {{{

call s:h("Normal",     { "bg": s:black, "fg": s:white, "gui": "NONE" })
hi! link VertSplit   White
hi! link LineNr      Gray
hi! link EndOfBuffer TabLine

call s:h("TabLineFill",{ "bg": s:black, "fg": s:white, "gui": "NONE" })
call s:h("TabLineSel", { "bg": s:black, "fg": s:red  , "gui": "NONE" })
call s:h("TabLine",    { "bg": s:black, "fg": s:white, "gui": "NONE" })

hi! link ModeMsg Red
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
hi! link String Cyan
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
hi link pythonOperator Statement

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
hi link markdownListMarker Constant
hi link markdownCode Constant
hi link markdownCodeBlock Constant
hi link markdownCodeDelimiter Constant
hi link markdownHeadingDelimiter Constant
" }}}

" VimWiki {{{
hi link VimwikiHeader1 markdownH1
hi link VimwikiHeader2 markdownH2
hi link VimwikiHeader3 markdownH3
" }}}

" Vim {{{
hi link vimHighlight Statement
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

