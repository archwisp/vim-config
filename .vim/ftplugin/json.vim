" Edit Trufflehog File

function! HandleURL(url)
    echo a:url
    let s:uri = matchstr(a:url, '[a-z]*:\/\/[^ >,;()]*')
    let s:uri = shellescape(s:uri, 1)
    if s:uri != ""
        " exec "!~/Tools/edit-trufflehog-file.sh '" . s:uri . "'"
        exec ":tabnew | :r!~/Tools/edit-trufflehog-file.sh '" . s:uri . "'"
    else
        echo "No URI found in line."
    endif
endfunction

" map <leader>u :call HandleURL()<cr>
nnoremap ,e :call HandleURL(<C-r><C-a>)<cr>


" nnoremap ,e :new <bar> :r!~/Tools/edit-trufflehog-file.sh <C-r><C-a><CR>
