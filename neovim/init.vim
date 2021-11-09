set nocompatible
let mapleader = " "
set shell=zsh\ -l

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.config/nvim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

call plug#begin('~/.config/nvim/plugged')

" Plugins are each listed in their own file. Loop and source ftw
"----------------------------------------------------------------
call s:SourceConfigFilesIn('enabled_plugins')

call plug#end()

call s:SourceConfigFilesIn('enabled_scripts')
