function! Artify(string, type) abort
    let list = split(a:string, '\zs')
    let result = join(list, '')
    return result
endfunction
