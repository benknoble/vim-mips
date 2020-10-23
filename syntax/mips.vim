if version < 600
  syntax clear
elseif exists('b:current_syntax') && b:current_syntax != 'mips'
  finish
endif
