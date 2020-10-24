setlocal commentstring=#%s
setlocal comments=b:#,s1:/*,mb:*,ex:*/

let &l:include = '\.include\s\+"\zs[^"]\+\ze"'
let &l:define = '\(\.eqv\)\|\(\.macro\)\|\(\ze\i\+:\)'

let b:undo_ftplugin = get(b:, 'undo_ftplugin', '')
if !empty(b:undo_ftplugin)
  let b:undo_ftplugin .= '|'
endif
let b:undo_ftplugin .= 'setlocal commentstring< comments<'
let b:undo_ftplugin .= ' | setlocal include<'
let b:undo_ftplugin .= ' | setlocal define<'
