" Description: Keymaps
nnoremap ñ <Esc>:w<CR>
inoremap ññ <Esc>
nnoremap <S-C-p> "0p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x
" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs
nnoremap <buffer> <tab> /\|\zs\S\{-}\|/<cr><c-]>


"------------------------------

" Hop
nmap ;m :HopWord<Return>

"------------------------------

" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
map ç<left> <C-w>>
map ç<up> <C-w>+
map ç<down> <C-w>-
map ç<right> <C-w><

" Clear search highlight
nnoremap <C-l> :nohl<CR><C-L>

" Eslint_d fix
nnoremap <space>o <cmd>lua vim.lsp.buf.execute_command({ command = "_typescript.organizeImports", arguments = {vim.api.nvim_buf_get_name(0)}, title = ""})<CR>
nnoremap <space>f <cmd>lua vim.lsp.buf.formatting_seq_sync()<CR>
nnoremap <space><space> <cmd>exec Format()<CR>
nnoremap <space>. <cmd>lua vim.lsp.buf.code_action()<CR>

" Buffers
nmap <space>j :bN<CR>
nmap <space>k :bn<CR>
nmap <space>m :!mv % %:h/
