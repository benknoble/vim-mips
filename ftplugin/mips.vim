setlocal commentstring=#%s

let &l:include = '\.include\s\+"\zs[^"]\+\ze"'

let b:undo_ftplugin = get(b:, 'undo_ftplugin', '')
if !empty(b:undo_ftplugin)
  let b:undo_ftplugin .= '|'
endif
let b:undo_ftplugin .= 'setlocal commentstring<'
let b:undo_ftplugin .= ' | setlocal include<'
