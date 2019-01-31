function! OpenVSCode()
  " Set current working dir as first file (to open working dir)
  let files = [shellescape(getcwd())]
  " Get all listed non-terminal buffers
  for buf in getbufinfo()
    " Add each name and its line number to the files list
    if buf['listed'] && buf['name'] !~? '^term'
      let name = buf['name'] . ':' . buf['lnum']
      call add(files, shellescape(name))
    endif
  endfor
  " Execute VSCode with this list of files
  let cmd = '!code -g ' . join(files, ' ')
  execute cmd
endfunction

command! OpenVSCode call OpenVSCode()
