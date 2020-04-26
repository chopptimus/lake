" Lake
" A color scheme based on Tudurom's cloudy color palette and z3bra's shblah.vim.
" Only works with gvim or truecolor terminals.

" Original cloudy colors
" #273941 bg
" #a66363 red
" #63a690 green
" #a6a663 yellow
" #6385a6 blue
" #bf9c86 orange
" #63a69b cyan
" #c0c5ce fg
" #456472 bright black
" #c27171 bright red
" #6dc2a3 bright green
" #bfc271 bright yellow
" #719bc2 bright blue
" #bf9c86 orange
" #71c2af bright cyan
" #eff1f5 white

set background=dark
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'lake'

let s:fg = '#a9b6c1'
let s:bg = '#22333a'
let s:gray0 = '#253b45'
let s:gray1 = '#294450'
let s:gray2 = '#405f6d'
let s:gray3 = '#608190'
let s:red = '#c27171'
let s:green = '#63a690'
let s:yellow = '#a6a663'
let s:blue = '#6385a6 '
let s:orange = '#bf9c86'
let s:cyan = '#63a39e'
let s:bright_red = s:red
let s:bright_green = '#6dc2a3'
let s:bright_yellow = '#bfc271'
let s:bright_blue = '#719bc2'
let s:bright_orange = s:orange
let s:bright_cyan = '#71c2af'

function! s:h(group, fg, bg, attr)
    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
    endif
endfun

" Actual colours and styles.
call s:h('ColorColumn', s:bg, s:yellow, 'none')
call s:h('Comment', s:gray3, s:bg, 'none')
call s:h('Constant', s:orange, s:bg, 'none')
call s:h('Cursor', '', s:fg, 'none')
call s:h('DiffAdd', s:bg, s:bright_green, 'none')
call s:h('DiffChange', s:bg, s:bright_blue, 'none')
call s:h('DiffDelete', s:bg, s:bright_red, 'none')
call s:h('DiffText', s:bg, s:orange, 'none')
call s:h('Directory', s:bright_blue, s:bg, 'none')
call s:h('Error', s:bg, s:red, 'none')
call s:h('ErrorMsg', s:red, s:bg, 'none')
call s:h('FoldColumn', s:bg, s:bg, 'none')
call s:h('Folded', s:gray3, s:bg, 'none')
call s:h('Function', s:fg, s:bg, 'none')
call s:h('Identifier', s:fg, s:bg, 'none')
call s:h('IncSearch', s:bg, s:fg, 'none')
call s:h('NonText', s:gray2, s:bg, 'none')
call s:h('Normal', s:fg, s:bg, 'none')
call s:h('Pmenu', s:bg, s:fg, 'none')
call s:h('PMenuSel', s:fg, s:gray1, 'none')
call s:h('PreProc', s:cyan, s:bg, 'none')
call s:h('Search', s:bg, s:green,'none')
call s:h('Special', s:green, s:bg, 'none')
call s:h('SpecialKey', s:fg, s:bg, 'none')
call s:h('Statement', s:bright_blue, s:bg, 'none')
call s:h('StatusLine', s:fg, s:gray1, 'bold')
call s:h('StatusLineNC', s:fg, s:gray0, 'none')
call s:h('String', s:green, s:bg, 'none')
call s:h('TabLineSel', s:fg, s:bg, 'none')
call s:h('Todo', s:bg, s:red, 'none')
call s:h('Type', s:bright_blue, s:bg, 'none')
call s:h('Underlined', s:fg, s:bg, 'underline')
call s:h('VertSplit', s:gray2, s:bg, 'none')
call s:h('Visual', s:bg, s:blue, 'none')
call s:h('WarningMsg', s:yellow, s:bg, 'none')
call s:h('WildMenu', s:bright_cyan, s:gray2, 'none')
call s:h('MatchParen', s:bg, s:cyan, 'none')

call s:h('SignColumn', '', s:gray1, 'none')
call s:h('SpellBad', s:bright_red, s:bg, 'none')
call s:h('ALEWarningSign', s:bright_blue, s:gray1, 'bold')

call s:h('clojureParen', s:fg, s:bg, 'none')
call s:h('clojureKeyword', s:blue, s:bg, 'none')
call s:h('clojureDefine', s:bright_blue, s:bg, 'none')
call s:h('clojureSpecial', s:bright_blue, s:bg, 'none')
call s:h('clojureMacro', s:bright_blue, s:bg, 'none')
call s:h('clojureCond', s:bright_blue, s:bg, 'none')

call s:h('pythonBuiltin', s:bright_blue, s:bg, '')

call s:h('lispParen', s:fg, s:bg, '')

" General highlighting group links.
highlight! link diffAdded       DiffAdd
highlight! link diffRemoved     DiffDelete
highlight! link diffChanged     DiffChange
highlight! link Title           Normal
highlight! link LineNr          NonText
highlight! link MoreMsg         Normal
highlight! link Question        Normal
highlight! link VimHiGroup      VimGroup
highlight! link CursorLine      Visual
highlight! link SpellCap        Constant

" Test the actual colorscheme
syn match Comment      "\"__Comment.*"
syn match Constant     "\"__Constant.*"
syn match Cursor       "\"__Cursor.*"
syn match CursorLine   "\"__CursorLine.*"
syn match DiffAdd      "\"__DiffAdd.*"
syn match DiffChange   "\"__DiffChange.*"
syn match DiffText     "\"__DiffText.*"
syn match DiffDelete   "\"__DiffDelete.*"
syn match Folded       "\"__Folded.*"
syn match Function     "\"__Function.*"
syn match Identifier   "\"__Identifier.*"
syn match IncSearch    "\"__IncSearch.*"
syn match NonText      "\"__NonText.*"
syn match Normal       "\"__Normal.*"
syn match Pmenu        "\"__Pmenu.*"
syn match PreProc      "\"__PreProc.*"
syn match Search       "\"__Search.*"
syn match Special      "\"__Special.*"
syn match SpecialKey   "\"__SpecialKey.*"
syn match Statement    "\"__Statement.*"
syn match StatusLine   "\"__StatusLine.*"
syn match StatusLineNC "\"__StatusLineNC.*"
syn match String       "\"__String.*"
syn match Todo         "\"__Todo.*"
syn match Type         "\"__Type.*"
syn match Underlined   "\"__Underlined.*"
syn match VertSplit    "\"__VertSplit.*"
syn match Visual       "\"__Visual.*"

"__Comment              /* this is a comment */
"__Constant             var = SHBLAH
"__Cursor               char under the cursor?
"__CursorLine           Line where the cursor is
"__DiffAdd              +line added from file.orig
"__DiffChange           line changed from file.orig
"__DiffText             actual changes on this line
"__DiffDelete           -line removed from file.orig
"__Folded               +--- 1 line : Folded line ---
"__Function             function lake()
"__Identifier           Never ran into that actually...
"__IncSearch            Next search term
"__NonText              This is not a text, move on
"__Normal               Typical text goes like this
"__Pmenu                Currently selected menu item
"__PreProc              #define LAKE true
"__Search               This is what you're searching for
"__Special              true false NULL SIGTERM
"__SpecialKey           Never ran into that either
"__Statement            if else return for switch
"__StatusLine           Statusline of current windows
"__StatusLineNC         Statusline of other windows
"__String               "Hello, World!"
"__Todo                 TODO: remove todos from source
"__Type                 int float char void unsigned uint32_t
"__Underlined           Anything underlined
"__VertSplit            :vsplit will only show ' | '
"__Visual               Selected text looks like this
