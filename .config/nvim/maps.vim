" Description: Keymaps

" Navigate buffers
nnoremap <silent> <Tab>   :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>
nnoremap <silent> d<Tab>  :bd<CR>

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300

" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>

" have a fixed columns for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

