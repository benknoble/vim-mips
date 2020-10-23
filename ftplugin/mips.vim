setlocal commentstring=#%s

let b:undo_ftplugin = get(b:, 'undo_ftplugin', '')
if !empty(b:undo_ftplugin)
  let b:undo_ftplugin .= '|'
endif
let b:undo_ftplugin .= 'setlocal commentstring<'
