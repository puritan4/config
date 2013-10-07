let g:dotvim_settings = {}
let g:dotvim_settings.version = 1

let g:dotvim_settings.plugin_groups_include = ['web','go','ruby','python', 'javascript']

" this sets the default style for netrw to tree-view
"let g:netrw_liststyle = 3

source ~/.vim/vimrc

" everything below here are customized for my system
set t_ut=           " need this to deal with tmux and GNU screen
set nofoldenable    " disable folding
set noexpandtab     " I want tabs for python

" this sets things for gvim
if has('gui_running')
  set lines=55 columns=120
  if has('gui_gtk')
    set gfn=Ubuntu\ Mono\ 12
  endif
endif
