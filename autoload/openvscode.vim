function! openvscode#AllBuffers(withlinenumbers)
  " Set current working dir as first file (to open working dir)
  let l:files = [shellescape(getcwd())]
  " Get all listed non-terminal buffers
  for buf in getbufinfo()
    " Add each name and its line number to the files list
    if buf['listed'] && buf['name'] !~? '^term'
      let l:name = buf['name']
      if a:withlinenumbers
        let l:name .= ':' . buf['lnum']
      endif
      call add(l:files, shellescape(name))
    endif
  endfor
  " Execute VSCode with this list of files
  let cmd = '!code -g ' . join(l:files, ' ')
  silent! execute cmd
endfunction
