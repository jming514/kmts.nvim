--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local base_bg = hsl(240, 14, 15)
local my_pink = hsl(352, 94, 72)
local cursor_bg = hsl(240, 14, 91)
local cursor_fg = hsl(240, 14, 5)

local errorRed = hsl(358, 100, 67)


local oneRed = hsl(355, 78, 56)
local oneWhite = hsl(105, 55, 96)
local oneWhite2 = hsl(0, 0, 71)
local oneLightBlue = hsl(182, 43, 76)
local oneBlue = hsl(203, 39, 44)
local oneBlue2 = hsl(202, 57, 60)
local oneBlue3 = hsl(190, 74, 59)
local oneDarkBlue = hsl(215, 50, 23)

local oneDarkGreen = hsl(132, 29, 31)
local oneGreen = hsl(98, 32, 45)
local oneGreen2 = hsl(162, 43, 46)
local oneLightGreen = hsl(78, 51, 56)
local oneRed2 = hsl(359, 47, 51)

local oneYellow = hsl(50, 100, 52)
local oneOrange = hsl(32, 100, 49)
local onePurple = hsl(280, 53, 75)
local oneDarkPurple = hsl(266, 10, 41)

local oneCoffee = hsl(28, 67, 44)
local onePink = hsl(338, 100, 84)
local oneSalmon = hsl(349, 100, 65)

local oneGrey = hsl(219, 10, 40)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn { bg = hsl(240, 14, 9) }, -- Columns set with 'colorcolumn'
    -- Conceal { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor { fg = cursor_fg, bg = cursor_bg }, -- Character under the cursor
    CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = hsl(0, 0, 22) }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { bg = hsl(0, 0, 22) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory      { }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = oneGreen}, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = oneBlue }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = oneRed}, -- Diff mode: Deleted line |diff.txt|
    DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { Cursor }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = errorRed }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    Folded         { bg = hsl(0, 0, 27)}, -- Line used for closed folds
    FoldColumn { fg = hsl(300, 11, 41) }, -- 'foldcolumn'
    SignColumn { fg = hsl(300, 14, 81) }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { fg = oneYellow }, -- |:substitute| replacement text highlighting
    LineNr { fg = hsl(0, 0, 70) },       -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove { fg = hsl(0, 0, 37) },              -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow { LineNrAbove },              -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr { LineNr }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { bg = hsl(0, 0, 55) }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal         { fg = hsl(219, 14, 71), bg = hsl(240, 14, 15)}, -- Normal text
    Normal         { fg = hsl(219, 14, 71)}, -- Normal text, transparent background
    NormalFloat    { Normal }, -- Normal text in floating windows.
    FloatBorder    { }, -- Border of floating windows.
    FloatTitle     { Normal }, -- Title of floating windows.
    NormalNC       { Normal }, -- normal text in non-current windows
    Pmenu          { Normal }, -- Popup menu: Normal item.
    PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- pmenuthumb     { }, -- popup menu: thumb of the scrollbar. question       { }, -- |hit-enter| prompt and yes/no questions
    -- quickfixline   { }, -- current |quickfix| item in the quickfix window. combined with |hl-cursorline| when the cursor is there.
    Search         { fg = onePurple, bg = oneDarkPurple }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { Normal }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { bg = hsl(251, 25, 26) }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    Whitespace     { fg = hsl(210, 11, 15) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = oneGrey }, -- Any comment

    Constant       { fg = oneWhite }, -- (*) Any constant
    String         { fg = oneLightGreen }, --   A string constant: "this is a string"
    Character      { fg = hsl(27, 61, 50) }, --   A character constant: 'c', '\n'
    Number         { fg = onePink }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier     { fg = oneWhite }, -- (*) Any variable name
    Function       { fg = oneBlue2 }, --   Function name (also: methods for classes)

    Statement      { fg = oneSalmon }, -- (*) Any statement
    Conditional    { fg = oneSalmon }, --   if, then, else, endif, switch, etc.
    Repeat         { fg = oneSalmon }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator       { fg = oneWhite2 }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc        { fg = oneSalmon }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           {fg = oneLightBlue }, -- (*) int, long, char, etc.
    StorageClass   { fg = oneBlue2 }, --   static, register, volatile, etc.
    Structure      {fg = oneGreen2 }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = oneRed }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = oneRed } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = oneLightGreen } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    sym"@text.reference"    { fg = hsl(105, 55, 96) }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    sym"@string.escape" { fg = hsl(27, 61, 50) }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    sym"@number" { fg = hsl(323, 37, 70) }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    sym"@function" { fg = oneBlue3 }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    sym"@parameter"         { fg = oneWhite }, -- Identifier
    sym"@method"            { fg = oneBlue2 }, -- Function
    sym"@field"             { fg = oneGreen2 }, -- Identifier
    sym"@property"          { fg = oneGreen2 }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    sym"@keyword" { fg = oneSalmon }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { fg = }, -- Identifier
    sym"@type"              { fg = onePurple }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
