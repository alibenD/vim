" Set Generator template when open a new file.

if exists("g:enable_template") && g:enable_template == 1 && exists("g:template_dir")
  augroup Template_Generator
    autocmd! Template_Generator
    autocmd BufNewFile * call Read_template()
  augroup End 
else
  finish
endif

let s:common_tpl_dir = g:template_dir . "/common"
let s:dynamic_tpl_dir = g:template_dir . "/dynamic"

function! Read_template()
  " get full name including extension
  let filename = expand("%:t")
  " get just extension
  let extname = expand("%:e")

  " Check if full-name template exist firstly
  let common_tpl_file = expand(s:common_tpl_dir . "/full/" . filename)
  if filereadable(common_tpl_file)
    call Read_template_file(common_tpl_file)
    return
  endif

  " Then check if dynamic full-name exist
  let dynamic_tpl_generator = expand(s:dynamic_tpl_dir . "/full/" . filename . ".bash")
  if executable(dynamic_tpl_generator)
    call Read_dynamic_template(dynamic_tpl_generator, filename)
    return
  endif

  " Then check if normal with postfix exist
  let common_tpl_file = expand(s:common_tpl_dir . "/ext/" . extname)
  if filereadable(common_tpl_file)
    call Read_template_file(common_tpl_file)
    return
  endif

  " Finally, check if dynamic with postfix exist
  let dynamic_tpl_generator = expand(s:dynamic_tpl_dir . "/ext/" . extname . ".bash")
  if executable(dynamic_tpl_generator)
    call Read_dynamic_template(dynamic_tpl_generator, filename)
    return
  endif
endfunction

"--Function: Read static template via bash, not via copying from text--
function! Read_template_file(filename)
  silent execute "0r " . a:filename
endfunction

" Function: Generate template via reading template generator
function! Read_dynamic_template(generator, filename)
  silent execute "0r !" . a:generator . " " . a:filename
  execute "set tags+=./tags"
  execute "set tags+=../tags"
endfunction
