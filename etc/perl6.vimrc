
" Make delimitMate work better with Perl 6 code
let g:delimitMate_matchpairs = "(:),[:],{:},｢:｣,“:”,«:»"
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_smart_matchpairs = 1
au FileType perl,perl6 let b:delimitMate_autoclose = 1

