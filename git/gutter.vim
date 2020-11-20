set signcolumn=yes
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_allow_clobber = 1

let g:gitgutter_set_sign_backgrounds = 1

let g:GitGutterLineNrHighlightsEnable = 1
let g:GitGutterLineHighlightsEnable = 1

highlight! link SignColumn LineNr


highlight link GitGutterChangeLine DiffText


function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
