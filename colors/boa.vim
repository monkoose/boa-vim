vim9script

set background=dark
highlight clear
syntax reset
g:colors_name = 'boa'

const colors = {
  norm_back: ['#110e0d', '0'],
  red: ['#d35b4b', '1'],
  green: ['#8f9e44', '2'],
  orange: ['#c57c41', '3'],
  darkblue: ['#898fac', '4'],
  purple: ['#b2809f', '5'],
  aqua: ['#70a17c', '6'],
  normal: ['#b8af96', '7'],
  yellow: ['#caa247', '11'],
  redish: ['#e62922', '160'],
  blue: ['#919697', '246'],
  gray: ['#80684f', '95'],
  brown: ['#826a33', '101'],
  cursorlinebg: ['#292523', '235'],
  black: ['#000000', '16'],
  visual: ['#3d3834', '236'],
  graish: ['#7c6f64', '242'],
  bright: ['#a89984', '144'],
}

g:terminal_ansi_colors = [
  '#110e0d',
  colors.red[0],
  colors.green[0],
  colors.orange[0],
  '#7680ac',
  colors.purple[0],
  '#70a195',
  '#8c8572',
  '#6e685a',
  colors.red[0],
  colors.green[0],
  colors.yellow[0],
  '#7680ac',
  colors.purple[0],
  '#70a195',
  colors.normal[0]
]

const bold = { bold: 1 }
const italic = { italic: 1 }
const underline = { underline: 1 }
const bold_underline = { bold: 1, underline: 1 }

def HlSet(name: string, fg = ['NONE', 'NONE'], bg = ['NONE', 'NONE'],
          attr = {}, attr_color = ['NONE', 'NONE'])
  hlset([{ name: name, guifg: fg[0], guibg: bg[0], cterm: attr, guisp: attr_color[0],
           ctermfg: fg[1], ctermbg: bg[1], ctermul: attr_color[1],
           gui: {}, start: 'NONE', stop: 'NONE', term: {} }])
enddef

def HlLinks(names: list<string>, linksto: string)
  var links = []
  for name in names
    add(links, { name: name, linksto: linksto, force: v:true })
  endfor
  hlset(links)
enddef

# HlSet('Normal', colors.normal, colors.norm_back)
HlLinks(
    [
        'CocOutlineName',
        'htmlTagN',
        'vimFuncSID',
        'vimSetSep',
        'vimSep',
        'vimContinue',
        'vimVar',
        'pythonDot',
        'cssVendor',
        'javaScriptBraces',
        'javaScriptParens',
        'jsGlobalNodeObjects',
        'jsGlobalObjects',
        'jsFuncParens',
        'jsParens',
        'typeScriptBraces',
        'typeScriptEndColons',
        'typeScriptDOMObjects',
        'typeScriptAjaxMethods',
        'typeScriptLogicSymbols',
        'typeScriptGlobalObjects',
        'typeScriptParens',
        'typeScriptOpSymbols',
        'typeScriptHtmlElemProperties',
        'markdownUrlDelimiter',
        'markdownLinkDelimiter',
        'markdownLinkTextDelimiter',
        'haskellSeparator',
        'haskellDelimiter',
        'jsonBraces',
        'jsonString',
    ],
    'Normal'
)

# :help group-name
# :help highlight-default
HlSet('Comment', colors.gray)
HlLinks([
  'xmlDocTypeDecl',
  'xmlCdataStart',
  'dtdFunction',
  'xmlProcessingDelim',
  'dtdParamEntityPunct',
  'dtdParamEntityDPunct',
  'xmlAttribPunct',
  'markdownBlockquote',
  'markdownListMarker',
  'markdownOrderedListMarker',
  'markdownRule',
  'markdownHeadingRule',
  'typeScriptDocSeeTag',
  'typeScriptDocParam',
],
    'Comment'
    )

HlSet('Constant', colors.purple)
HlLinks(
    [
        'Character',
        'Number',
        'Boolean',
        'Float',
        # ---
        'goConstants',
        'htmlScriptTag',
        'xmlDocTypeKeyword',
        'xmlCdataCdata',
        'dtdTagName',
        'cOperator',
        'pythonExceptions',
        'pythonBoolean',
        'javaScriptNumber',
        'javaScriptNull',
        'jsNull',
        'jsUndefined',
        'typeScriptNull',
        'markdownUrl',
        'haskellNumber',
        'haskellPragma',
        'svelteKeyword',
    ],
    'Constant'
)

HlSet('String', colors.green)
HlLinks(
    [
        'Question',
        # ---
        'CocInfoSign',
        'GitGutterAdd',
        'diffAdded',
        'cssClassName',
        'cssImportant',
        'markdownUrlTitleDelimiter',
        'haskellString',
        'haskellChar',
        'jsonKeyword',
        'jsonQuote',
    ],
    'String'
)

HlSet('Identifier', colors.blue)
HlLinks(
    [
        'Conceal',
        'diffLine',
        # ---
        'htmlTag',
        'htmlEndTag',
        'xmlTag',
        'xmlEndTag',
        'xmlTagName',
        'xmlEqual',
        'pythonInclude',
        'pythonImport',
        'pythonRun',
        'pythonCoding',
        'cssBraces',
        'cssColor',
        'cssSelectorOp',
        'cssSelectorOp2',
        'javaScriptMember',
        'goDeclType',
    ],
    'Identifier'
)

HlSet('Function', colors.darkblue)
HlLinks(
    [
        'pythonDottedName',
        'luaFuncCall',
        'haskellIdentifier',
    ],
    'Function'
)

HlSet('Statement', colors.red)
HlLinks(
    [
        'Conditional',
        'Repeat',
        'Label',
        'Operator',
        'Keyword',
        'Exception',
        'diffRemoved',
        # ---
        'CocErrorSign',
        'GitGutterDelete',
        'vimNotFunc',
        'vimFunction',
        'pythonDecorator',
        'pythonOperator',
        'pythonException',
        'pythonConditional',
        'pythonRepeat',
        'javaScriptIdentifier',
        'goDeclaration',
        'luaIn',
        'haskellOperators',
        'tomlTable',
    ],
    'Statement'
)

HlSet('PreProc', colors.aqua)
HlLinks(
    [
        'Include',
        'Define',
        'Macro',
        'PreCondit',
        'Structure',
        # ---
        'CocHintSign',
        'GitGutterChange',
        'GitGutterChangeDelete',
        'diffChanged',
        'htmlArg',
        'xmlAttrib',
        'pythonFunction',
        'cssTextProp',
        'cssAnimationProp',
        'cssTransformProp',
        'cssTransitionProp',
        'cssPrintProp',
        'cssBoxProp',
        'cssFontDescriptorProp',
        'cssFlexibleBoxProp',
        'cssBorderOutlineProp',
        'cssBackgroundProp',
        'cssMarginProp',
        'cssListProp',
        'cssTableProp',
        'cssFontProp',
        'cssPaddingProp',
        'cssDimensionProp',
        'cssRenderProp',
        'cssColorProp',
        'cssGeneratedContentProp',
        'javaScriptFunction',
        'jsClassKeyword',
        'jsExtendsKeyword',
        'jsExportDefault',
        'jsTemplateBraces',
        'jsFunction',
        'typeScriptReserved',
        'typeScriptLabel',
        'typeScriptFuncKeyword',
        'typeScriptInterpolationDelimiter',
        'goDirective',
        'luaFunction',
        'luaFunction',
        'markdownCode',
        'markdownCodeBlock',
        'markdownCodeDelimiter',
        'haskellLet',
        'haskellDefault',
        'haskellWhere',
        'haskellBottom',
        'haskellBlockKeywords',
        'haskellImportKeywords',
        'haskellDeclKeyword',
        'haskellDeriving',
        'haskellAssocType',
    ],
    'PreProc'
)

HlSet('Type', colors.yellow)
HlLinks(
    [
        'Typedef',
        'LineNr',
        # ---
        'CocWarningSign',
        'diffNewFile',
        'vimCommand',
        'cssFunctionName',
        'cssUIProp',
        'cssPositioningProp',
        'jsClassDefinition',
        'markdownH5',
        'markdownH6',
        'haskellType',
        'tomlTableArray',
    ],
    'Type'
)

HlSet('Special', colors.orange)
HlLinks(
    [
        'StorageClass',
        'SpecialChar',
        'Tag',
        'Delimiter',
        'SpecialComment',
        'Debug',
        'WarningMsg',
        'qfLineNr',
        'diffFile',
        # ---
        'htmlSpecialChar',
        'xmlEntity',
        'xmlEntityPunct',
        'vimNotation',
        'vimBracket',
        'vimMapModKey',
        'cStructure',
        'pythonBuiltin',
        'pythonBuiltinObj',
        'pythonBuiltinFunc',
        'cssIdentifier',
        'typeScriptIdentifier',
        'goBuiltins',
        'luaTable',
        'markdownHeadingDelimiter',
        'haskellBacktick',
        'haskellStatement',
        'haskellConditional',
    ],
    'Special'
)

HlSet('Underlined', colors.blue, v:none, underline)
HlSet('Ignore', ['#3c322d', '236'])
HlSet('Error', colors.red, v:none, bold_underline)
HlSet('Todo', colors.normal, v:none, bold_underline)

HlSet('CursorLine', v:none, colors.cursorlinebg)
HlLinks(['ColorColumn', 'CursorColumn', 'CocMenuSel'], 'CursorLine')

HlSet('Cursor', v:none, v:none, { inverse: 1 })
HlLinks(['lCursor', 'CursorIM'], 'Cursor')

HlSet('Directory', colors.green, v:none, bold)
HlLinks(
    [
        'markdownH1',
        'markdownH2',
        'CocGitAddedSign',
    ],
    'Directory'
)

HlSet('DiffAdd', v:none, ['#2b4018', '71'])
HlSet('DiffChange', v:none, ['#263840', '66'])
HlSet('DiffDelete', ['#1a1a1a', '234'], ['#4d2f2b', '96'])
HlSet('DiffText', v:none, ['#453b24', '59'])
HlSet('NonText', ['#47423d', '238'])
HlLinks(
    [
        'EndOfBuffer',
        'SpecialKey',
        'LineNrAbove',
        'LineNrBelow',
    ],
    'NonText'
)

HlSet('ErrorMsg', colors.red, v:none, bold)
HlLinks(['CocGitRemovedSign', 'CocGitTopRemovedSign'], 'ErrorMsg')

HlSet('VertSplit', v:none, colors.black)
HlSet('Folded', colors.gray, ['#2b2927', '235'])
HlLinks(['FoldColumn'], 'Folded')
HlSet('IncSearch', ['#4780f1', '69'], v:none, bold_underline)
HlSet('CursorLineNr', colors.yellow, colors.cursorlinebg)
HlSet('MatchParen', ['#eb3a75', '168'], v:none, bold)
HlSet('ModeMsg', ['#93b329', '107'], v:none, bold)
HlSet('MoreMsg', colors.yellow, v:none, bold)
HlLinks(
    [
        'markdownH3',
        'markdownH4',
        'svelteRepeat',
        'svelteConditional'
    ],
    'MoreMsg'
)

HlSet('Pmenu', colors.normal, colors.visual)
HlSet('PmenuSel', colors.visual, colors.blue, bold)
HlSet('Visual', v:none, colors.visual)
HlLinks(['PmenuSbar', 'VisualNOS'], 'Visual')
HlSet('PmenuThumb', v:none, colors.graish)
HlSet('QuickFixLine', v:none, ['#37322d', '237'])
HlSet('Search', ['#1eb81e', '34'], v:none, bold_underline)
HlSet('SpellBad', v:none, v:none, underline, colors.redish)
HlSet('SpellCap', v:none, v:none, underline, ['#a0b82e', '143'])
HlLinks(['SpellLocal', 'SpellRare'], 'SpellCap')
HlSet('StatusLine', ['#797065', '243'], colors.black)
HlSet('StatusLineNC', ['#493c36', '238'], colors.black)
HlLinks(['CocListPath'], 'StatusLineNC')
HlSet('StatusLineTerm', colors.green, colors.black, bold)
HlSet('StatusLineTermNC', ['#5f6e24', '59'], colors.black)
HlSet('TabLine', colors.graish, colors.black)
HlLinks(['TabLineFill'], 'Tabline')
HlSet('TabLineSel', ['#74853c', '101'], colors.black, bold)
HlSet('Terminal', colors.normal, ['#1d1f17', '234'])
HlSet('Title', ['#855c79', '96'], v:none, bold)
HlSet('WildMenu', colors.blue, colors.visual, bold)

HlSet('User1', ['#628c4c', '65'], colors.black)
HlSet('User2', ['#70655c', '101'], colors.black, underline, colors.redish)
HlSet('User3', ['#a59543', '137'], colors.black)
HlSet('User4', ['#466d87', '60'], colors.black)
HlSet('User5', ['#87517f', '96'], colors.black)
HlSet('User6', ['#964b44', '95'], colors.black)
HlSet('User7', ['#ca4141', '167'], colors.black, bold)
HlSet('HighlightedyankRegion', v:none, ['#363d45', '237'])

HlSet('SignColumn')
HlSet('qfError')
HlSet('qfFileName')

HlSet('CocHoverRange', v:none, ['#2f3829', '237'])
HlLinks(['CocCursorRange'], 'CocHoverRange')
HlSet('CocFloating', v:none, ['#21261d', '235'])
HlSet('CocNotification', v:none, ['#1d2326', '234'])
HlSet('CocListMode', ['#748c20', '100'], colors.black, bold)
HlSet('CocErrorHighlight', v:none, v:none, underline, ['#d33e2a', '167'])
HlSet('CocWarningHighlight', v:none, v:none, underline, ['#dea91d', '178'])
HlSet('CocInfoHighlight', v:none, v:none, underline, ['#9dcc1f', '112'])
HlSet('CocHintHighlight', v:none, v:none, underline, ['#50bf7b', '77'])
HlSet('CocGitChangedSign', v:none, v:none, bold, ['#70a17c', '71'])
HlLinks(['CocGitChangeRemovedSign'], 'CocGitChangedSign')

HlSet('debugPC', v:none, ['#0f1317', '23'])
HlSet('debugBreakpoint', colors.red, v:none, { reverse: 1, bold: 1 })
HlLinks(
    [
        'htmlSpecialTagName',
        'docbkKeyword',
    ],
    'htmlTagName'
)

HlSet('htmlLink', colors.bright, v:none, underline)
HlSet('htmlBold', colors.normal, v:none, bold)
HlSet('htmlBoldUnderline', colors.normal, v:none, bold_underline)
HlSet('htmlBoldItalic', colors.normal, v:none, { bold: 1, italic: 1 })
HlSet('htmlBoldUnderlineItalic', colors.normal, v:none, { bold: 1, underline: 1, italic: 1 })
HlSet('htmlUnderline', colors.normal, v:none, underline)
HlSet('htmlUnderlineItalic', colors.normal, v:none, { underline: 1, italic: 1 })
HlSet('htmlItalic', colors.normal, v:none, italic)


HlSet('vimCommentTitle', colors.bright, v:none, bold)
HlLinks(['vimSubst'], 'vimFuncName')
HlLinks(['vimCommentString'], 'vimComment')
HlSet('typeScriptDocTags', colors.bright, v:none, bold)

HlSet('markdownItalic', colors.normal, v:none, italic)
HlSet('markdownLinkText', colors.gray, v:none, underline)
HlLinks(['markdownIdDeclaration'], 'markdownLinkText')

HlSet('StargateFocus', ['#958c6a', '101'])
HlSet('StargateDesaturate', ['#49423f', '238'])
HlSet('StargateError', colors.red)
HlSet('StargateLabels', colors.yellow, ['#171e2c', '234'])
HlSet('StargateErrorLabels', colors.yellow, ['#551414', '52'])
HlSet('StargateMain', ['#f2119c', '198'], v:none, bold)
HlSet('StargateSecondary', ['#11eb9c', '42'], v:none, bold)
HlSet('StargateShip', ['#111111', '233'], colors.yellow)
HlSet('StargateVIM9000', ['#111111', '233'], colors.purple, bold)
HlSet('StargateMessage', ['#a5b844', '143'])
HlSet('StargateErrorMessage', ['#e36659', '167'])

# vim: set tw=80 fdm=marker:
