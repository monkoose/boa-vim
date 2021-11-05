" Initialisation: {{{

set background=dark
highlight clear
syntax reset
let g:colors_name ='boa'

" }}}
" Clear Defaults: {{{

hi Comment NONE
hi Constant NONE
hi String NONE
hi Character NONE
hi Number NONE
hi Boolean NONE
hi Float NONE
hi Identifier NONE
hi Function NONE
hi Statement NONE
hi Conditional NONE
hi Repeat NONE
hi Label NONE
hi Operator NONE
hi Keyword NONE
hi Exception NONE
hi PreProc NONE
hi Include NONE
hi Define NONE
hi Macro NONE
hi PreCondit NONE
hi Type NONE
hi StorageClass NONE
hi Structure NONE
hi Typedef NONE
hi Special NONE
hi SpecialChar NONE
hi Tag NONE
hi Delimiter NONE
hi SpecialComment NONE
hi Debug NONE
hi Underlined NONE
hi Ignore NONE
hi Error NONE
hi Todo NONE

hi ColorColumn NONE
hi Conceal NONE
hi Cursor NONE
hi lCursor NONE
hi CursorIM NONE
hi CursorColumn NONE
hi CursorLine NONE
hi Directory NONE
hi DiffAdd NONE
hi DiffChange NONE
hi DiffDelete NONE
hi DiffText NONE
hi EndOfBuffer NONE
hi ErrorMsg NONE
hi VertSplit NONE
hi Folded NONE
hi FoldColumn NONE
hi SignColumn NONE
hi IncSearch NONE
hi LineNr NONE
hi LineNrAbove NONE
hi LineNrBelow NONE
hi CursorLineNr NONE
hi MatchParen NONE
hi ModeMsg NONE
hi MoreMsg NONE
hi NonText NONE
hi Normal NONE
hi Pmenu NONE
hi PmenuSel NONE
hi PmenuSbar NONE
hi PmenuThumb NONE
hi Question NONE
hi QuickFixLine NONE
hi Search NONE
hi SpecialKey NONE
hi SpellBad NONE
hi SpellCap NONE
hi SpellLocal NONE
hi SpellRare NONE
hi StatusLine NONE
hi StatusLineNC NONE
hi StatusLineTerm NONE
hi StatusLineTermNC NONE
hi TabLine NONE
hi TabLineFill NONE
hi TabLineSel NONE
hi Terminal NONE
hi Title NONE
hi Visual NONE
hi VisualNOS NONE
hi WarningMsg NONE
hi WildMenu NONE

" }}}
" Syntax Highlighting: {{{
hi BoaRed      guifg=#d35b4b
hi BoaGreen    guifg=#8f9e44
hi BoaYellow   guifg=#caa247
hi BoaBlue     guifg=#919697
hi BoaDarkBlue guifg=#898fac
hi BoaPurple   guifg=#b2809f
hi BoaAqua     guifg=#70a17c
hi BoaOrange   guifg=#c57c41
hi BoaGray     guifg=#817466
hi BoaBrown    guifg=#826a33

" :help group-name
hi link Comment BoaGray
hi link Constant BoaPurple
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Constant
hi link String BoaGreen
hi link Identifier BoaBlue
hi link Function BoaDarkBlue
hi link Statement BoaRed
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Operator Statement
hi link Keyword Statement
hi link Exception Statement
hi link PreProc BoaAqua
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link Type BoaYellow
hi link StorageClass BoaOrange
hi link Structure BoaAqua
hi link Typedef Type
hi link Special BoaOrange
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special
hi Underlined guifg=#919697 cterm=underline
hi Ignore guifg=#3c322d
hi Error guifg=#d35b4b cterm=bold,underline
hi Todo guifg=fg cterm=bold,underline

" :help highlight-default
hi link ColorColumn CursorLine
hi link Conceal BoaBlue
hi Cursor cterm=inverse
hi link lCursor Cursor
hi link CursorIM Cursor
hi CursorLine guibg=#292523
hi link CursorColumn CursorLine
hi Directory guifg=#8f9e44 cterm=bold
hi DiffAdd guibg=#2b4018
hi DiffChange guibg=#263840
hi DiffDelete guifg=#1a1a1a guibg=#4d2f2b
hi DiffText guibg=#453b24
hi link EndOfBuffer NonText
hi ErrorMsg guifg=#d35b4b cterm=bold
hi VertSplit guifg=#0a0707
hi Folded guifg=#817466 guibg=#2b2927
hi link FoldColumn Folded
hi IncSearch guifg=#4780f1 cterm=bold,underline
hi LineNr guifg=#caa247 guibg=#292523
hi link LineNrAbove NonText
hi link LineNrBelow LineNrAbove
hi link CursorLineNr LineNr
hi MatchParen guifg=#eb3a75 cterm=bold
hi ModeMsg guifg=#93b329 cterm=bold
hi MoreMsg guifg=#caa247 cterm=bold
hi NonText guifg=#47423d
hi Normal guifg=#b8af96
hi Pmenu guifg=#b8af96 guibg=#3d3834
hi PmenuSel guifg=#3d3834 guibg=#919697 cterm=bold
hi link PmenuSbar Visual
hi PmenuThumb guibg=#7c6f64
hi link Question BoaGreen
hi QuickFixLine guibg=#37322d
hi Search guifg=#1eb81e cterm=bold,underline
hi link SpecialKey NonText
hi SpellBad guisp=#e62922 cterm=underline
hi SpellCap guisp=#a0b82e cterm=underline
hi link SpellLocal SpellCap
hi link SpellRare SpellCap
hi StatusLine guifg=#797065 guibg=#0a0707
hi StatusLineNC guifg=#493c36 guibg=#0a0707
hi StatusLineTerm guifg=#8f9e44 guibg=#0a0707 cterm=bold
hi StatusLineTermNC guifg=#5f6e24 guibg=#0a0707
hi TabLine guifg=#7c6f64 guibg=#0a0707
hi link TabLineFill Tabline
hi TabLineSel guifg=#74853c guibg=#0a0707 cterm=bold
hi Terminal guifg=#b8af96 guibg=#1d1f17
hi Title guifg=#855c79 cterm=bold
hi Visual guibg=#3d3834
hi link VisualNOS Visual
hi link WarningMsg BoaOrange
hi WildMenu guifg=#919697 guibg=#3d3834 cterm=bold

hi User1 guifg=#628c4c guibg=#0a0707
hi User2 guifg=#70655c guibg=#0a0707 guisp=#e62922 cterm=underline
hi User3 guifg=#a59543 guibg=#0a0707
hi User4 guifg=#466d87 guibg=#0a0707
hi User5 guifg=#87517f guibg=#0a0707
hi User6 guifg=#964b44 guibg=#0a0707
hi User7 guifg=#ca4141 guibg=#0a0707 cterm=bold

hi link qfLineNr BoaOrange
" qfError
" qfFileName"
hi HighlightedyankRegion guibg=#363D45

" }}}

" Plugin specific -------------------------------------------------------------
" EasyMotion: {{{

" hi! link EasyMotionTarget Search
hi EasyMotionTarget guifg=#e04c38 cterm=bold
hi! link EasyMotionTarget2First EasyMotionTarget
hi EasyMotionTarget2Second guifg=#9eb339 cterm=bold
hi! link EasyMotionShade Comment

" }}}
" Netrw: {{{

hi! link netrwDir BoaAqua
hi! link netrwClassify BoaAqua
hi! link netrwLink BoaGray
hi! link netrwSymLink Normal
hi! link netrwExe BoaYellow
hi! link netrwComment BoaGray
hi! link netrwList BoaBlue
hi! link netrwHelpCmd BoaAqua
hi! link netrwCmdSep Normal
hi! link netrwVersion BoaGreen

" }}}
" Coc: {{{

hi link CocErrorSign BoaRed
hi link CocWarningSign BoaYellow
hi link CocInfoSign BoaGreen
hi link CocHintSign BoaAqua
hi CocHoverRange guibg=#2F3829
hi link CocCursorRange CocHoverRange
hi link HighlightedyankRegion CocHoverRange
hi CocFloating guibg=#21261d
hi CocNotification guifg=NONE guibg=#1d2326
hi link CocOutlineName Normal
hi link CocListPath StatusLineNC
hi CocListMode guifg=#748c20 guibg=#0a0707 cterm=bold
hi CocErrorHighlight guisp=#d33e2a cterm=underline
hi CocWarningHighlight guisp=#dea91d cterm=underline
hi CocInfoHighlight guisp=#9dcc1f cterm=underline
hi CocHintHighlight guisp=#50bf7b cterm=underline
hi CocGitRemovedSign guifg=#d35b4b cterm=bold
hi CocGitTopRemovedSign guifg=#d35b4b cterm=bold
hi CocGitChangedSign guifg=#70a17c cterm=bold
hi CocGitChangeRemovedSign guifg=#70a17c cterm=bold
hi CocGitAddedSign guifg=#8f9e44 cterm=bold

" }}}
" GitGutter: {{{

hi link GitGutterAdd BoaGreen
hi link GitGutterChange BoaAqua
hi link GitGutterDelete BoaRed
hi link GitGutterChangeDelete BoaAqua

" }}}
" TermDebug: {{{
hi debugPC guibg=#0f1317
hi debugBreakpoint guifg=#d35b4b cterm=reverse,bold

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi link diffAdded BoaGreen
hi link diffRemoved BoaRed
hi link diffChanged BoaAqua
hi link diffFile BoaOrange
hi link diffNewFile BoaYellow
hi link diffLine BoaBlue

" }}}
" Html: {{{

hi link htmlTag BoaBlue
hi link htmlEndTag BoaBlue
hi link htmlArg BoaAqua
hi link htmlScriptTag BoaPurple
hi link htmlTagN Normal
hi link htmlSpecialTagName htmlTagName
hi link htmlSpecialChar BoaOrange

hi htmlLink guifg=#a89984 cterm=underline
hi htmlBold guifg=fg cterm=bold
hi htmlBoldUnderline guifg=fg cterm=bold,underline
hi htmlBoldItalic guifg=fg cterm=bold,italic
hi htmlBoldUnderlineItalic guifg=fg cterm=bold,underline,italic
hi htmlUnderline guifg=fg cterm=underline
hi htmlUnderlineItalic guifg=fg cterm=underline,italic
hi htmlItalic guifg=fg cterm=italic

" }}}
" Xml: {{{

hi link xmlTag BoaBlue
hi link xmlEndTag BoaBlue
hi link xmlTagName BoaBlue
hi link xmlEqual BoaBlue
hi link docbkKeyword htmlTagName
hi link xmlDocTypeDecl BoaGray
hi link xmlDocTypeKeyword BoaPurple
hi link xmlCdataStart BoaGray
hi link xmlCdataCdata BoaPurple
hi link dtdFunction BoaGray
hi link dtdTagName BoaPurple
hi link xmlAttrib BoaAqua
hi link xmlProcessingDelim BoaGray
hi link dtdParamEntityPunct BoaGray
hi link dtdParamEntityDPunct BoaGray
hi link xmlAttribPunct BoaGray
hi link xmlEntity BoaOrange
hi link xmlEntityPunct BoaOrange

" }}}
" Vim: {{{

hi vimCommentTitle guifg=#a89984 cterm=bold

hi link vimNotation BoaOrange
hi link vimBracket BoaOrange
hi link vimMapModKey BoaOrange
hi link vimFuncSID Normal
hi link vimSetSep Normal
hi link vimSep Normal
hi link vimContinue Normal
hi link vimVar Normal
hi link vimNotFunc BoaRed
hi link vimCommand BoaYellow
hi link vimFunction BoaRed
hi link vimSubst vimFuncName
hi link vimCommentString vimComment

" }}}
" C: {{{

hi link cOperator BoaPurple
hi link cStructure BoaOrange

" }}}
" Python: {{{

hi link pythonBuiltin BoaOrange
hi link pythonBuiltinObj BoaOrange
hi link pythonBuiltinFunc BoaOrange
hi link pythonFunction BoaAqua
hi link pythonDecorator BoaRed
hi link pythonInclude BoaBlue
hi link pythonImport BoaBlue
hi link pythonRun BoaBlue
hi link pythonCoding BoaBlue
hi link pythonOperator BoaRed
hi link pythonException BoaRed
hi link pythonExceptions BoaPurple
hi link pythonBoolean BoaPurple
hi link pythonDot Normal
hi link pythonConditional BoaRed
hi link pythonRepeat BoaRed
hi link pythonDottedName BoaDarkBlue

" }}}
" CSS: {{{

hi link cssBraces BoaBlue
hi link cssFunctionName BoaYellow
hi link cssIdentifier BoaOrange
hi link cssClassName BoaGreen
hi link cssColor BoaBlue
hi link cssSelectorOp BoaBlue
hi link cssSelectorOp2 BoaBlue
hi link cssImportant BoaGreen
hi link cssVendor Normal
hi link cssTextProp BoaAqua
hi link cssAnimationProp BoaAqua
hi link cssUIProp BoaYellow
hi link cssTransformProp BoaAqua
hi link cssTransitionProp BoaAqua
hi link cssPrintProp BoaAqua
hi link cssPositioningProp BoaYellow
hi link cssBoxProp BoaAqua
hi link cssFontDescriptorProp BoaAqua
hi link cssFlexibleBoxProp BoaAqua
hi link cssBorderOutlineProp BoaAqua
hi link cssBackgroundProp BoaAqua
hi link cssMarginProp BoaAqua
hi link cssListProp BoaAqua
hi link cssTableProp BoaAqua
hi link cssFontProp BoaAqua
hi link cssPaddingProp BoaAqua
hi link cssDimensionProp BoaAqua
hi link cssRenderProp BoaAqua
hi link cssColorProp BoaAqua
hi link cssGeneratedContentProp BoaAqua

" }}}
" JavaScript: {{{

hi link javaScriptBraces Normal
hi link javaScriptFunction BoaAqua
hi link javaScriptIdentifier BoaRed
hi link javaScriptMember BoaBlue
hi link javaScriptNumber BoaPurple
hi link javaScriptNull BoaPurple
hi link javaScriptParens Normal

" }}}
" PanglossJS: {{{

hi link jsClassKeyword BoaAqua
hi link jsExtendsKeyword BoaAqua
hi link jsExportDefault BoaAqua
hi link jsTemplateBraces BoaAqua
hi link jsGlobalNodeObjects Normal
hi link jsGlobalObjects Normal
hi link jsFunction BoaAqua
hi link jsFuncParens Normal
hi link jsParens Normal
hi link jsNull BoaPurple
hi link jsUndefined BoaPurple
hi link jsClassDefinition BoaYellow

" }}}
" TypeScript: {{{

hi link typeScriptReserved BoaAqua
hi link typeScriptLabel BoaAqua
hi link typeScriptFuncKeyword BoaAqua
hi link typeScriptIdentifier BoaOrange
hi link typeScriptBraces Normal
hi link typeScriptEndColons Normal
hi link typeScriptDOMObjects Normal
hi link typeScriptAjaxMethods Normal
hi link typeScriptLogicSymbols Normal
hi link typeScriptDocSeeTag Comment
hi link typeScriptDocParam Comment
hi link typeScriptDocTags vimCommentTitle
hi link typeScriptGlobalObjects Normal
hi link typeScriptParens Normal
hi link typeScriptOpSymbols Normal
hi link typeScriptHtmlElemProperties Normal
hi link typeScriptNull BoaPurple
hi link typeScriptInterpolationDelimiter BoaAqua

" }}}
" Go: {{{

hi link goDirective BoaAqua
hi link goConstants BoaPurple
hi link goDeclaration BoaRed
hi link goDeclType BoaBlue
hi link goBuiltins BoaOrange

" }}}
" Lua: {{{

hi link luaIn BoaRed
hi link luaFunction BoaAqua
hi link luaFunction BoaAqua
hi link luaFuncCall BoaDarkBlue
hi link luaTable BoaOrange

" }}}
" Markdown: {{{

hi markdownItalic guifg=#b8af96 cterm=italic

hi link markdownH1 Directory
hi link markdownH2 Directory
hi markdownH3 guifg=#caa247 cterm=bold
hi link markdownH4 markdownH3
hi link markdownH5 BoaYellow
hi link markdownH6 BoaYellow

hi link markdownCode BoaAqua
hi link markdownCodeBlock BoaAqua
hi link markdownCodeDelimiter BoaAqua

hi link markdownBlockquote BoaGray
hi link markdownListMarker BoaGray
hi link markdownOrderedListMarker BoaGray
hi link markdownRule BoaGray
hi link markdownHeadingRule BoaGray

hi link markdownUrlDelimiter Normal
hi link markdownLinkDelimiter Normal
hi link markdownLinkTextDelimiter Normal

hi link markdownHeadingDelimiter BoaOrange
hi link markdownUrl BoaPurple
hi link markdownUrlTitleDelimiter BoaGreen

hi markdownLinkText guifg=#817466 cterm=underline
hi link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

hi link haskellType BoaYellow
hi link haskellIdentifier BoaDarkBlue
hi link haskellSeparator Normal
hi link haskellDelimiter Normal
hi link haskellOperators BoaRed
hi link haskellBacktick BoaOrange
hi link haskellStatement BoaOrange
hi link haskellConditional BoaOrange
hi link haskellLet BoaAqua
hi link haskellDefault BoaAqua
hi link haskellWhere BoaAqua
hi link haskellBottom BoaAqua
hi link haskellBlockKeywords BoaAqua
hi link haskellImportKeywords BoaAqua
hi link haskellDeclKeyword BoaAqua
hi link haskellDeriving BoaAqua
hi link haskellAssocType BoaAqua
hi link haskellNumber BoaPurple
hi link haskellPragma BoaPurple
hi link haskellString BoaGreen
hi link haskellChar BoaGreen

" }}}
" Json: {{{

hi link jsonKeyword BoaGreen
hi link jsonQuote BoaGreen
hi link jsonBraces Normal
hi link jsonString Normal

" }}}
" TOML: {{{

hi link tomlTable BoaRed
hi link tomlTableArray BoaYellow

" }}}
" Svelte: {{{

hi svelteRepeat guifg=#caa247 cterm=bold
hi link svelteConditional svelteRepeat
hi link svelteKeyword BoaPurple

" }}}
" Terminal Colors: {{{

let g:terminal_ansi_colors = [
      \ '#1f1a17',
      \ '#d35b4b',
      \ '#8f9e44',
      \ '#c57c41',
      \ '#7680ac',
      \ '#b2809f',
      \ '#70a195',
      \ '#8c8572',
      \ '#6e685a',
      \ '#d35b4b',
      \ '#8f9e44',
      \ '#caa247',
      \ '#7680ac',
      \ '#b2809f',
      \ '#70a195',
      \ '#b8af96'
      \ ]
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
