"---Automatically generated from template 'vim' wrote by @aliben---
"
" @name: functions.vim
" @author: aliben.develop@gmail.com
" @created_date: 2017-10-21 21:12:57
" @last_modified_date: 2017-10-22 23:55:10
" @description: Definition of self-defined function
"---***********************************************---


"---Variables---
let s:originPoint = [0,3,0,0]

"---Function---

  "---UpdateModifiedDate---
  func UpdateModifiedDate()
    let currentTime = strftime("%Y-%m-%d %H:%M:%S")
    let lineNumberCurrent = line('.')
    let colNumberCurrent = col('.')
    call setpos(".", s:originPoint)
    let lineNumberSearch = search('@last_modified_date')

    let cursorCurrent = [0, lineNumberCurrent, colNumberCurrent, 0] 
    echo lineNumberCurrent
    if expand("%:e") == 'vim'
      call setline(lineNumberSearch, '" @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'bash'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'sh'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'c'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'cc'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'cpp'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'cxx'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'h'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'hh'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'hpp'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'hxx'
      call setline(lineNumberSearch, '  * @last_modified_date: ' . currentTime)
    elseif expand("%:t") == 'makefile'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:t") == 'Makefile'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:t") == 'makefile*'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:t") == 'CMakeLists.txt'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:t") == '.gitignore'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'yml'
      call setline(lineNumberSearch, '# @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'xml'
      call setline(lineNumberSearch, '* @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'launch'
      call setline(lineNumberSearch, '* @last_modified_date: ' . currentTime)
    elseif expand("%:e") == 'urdf'
      call setline(lineNumberSearch, '* @last_modified_date: ' . currentTime)
    endif
    call setpos(".", cursorCurrent)
  endfunction
