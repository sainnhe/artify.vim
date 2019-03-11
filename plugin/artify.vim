scriptencoding utf-8
" https://unicode-table.com/en/#1D400
" https://unicode-table.com/en/#24B6
function! Artify(string, type) abort
    let list = split(a:string, '\zs')
    if a:type ==# 'circled'
        let result = Artify_circled(list)
    elseif a:type ==# 'bold'  " +number
        let result = Artify_bold(list)
    elseif a:type ==# 'italic'  " lack 'h'
        let result = Artify_italic(list)
    elseif a:type ==# 'bold_italic'
        let result = Artify_bold_italic(list)
    elseif a:type ==# 'script'  " lack of many characters
        let result = Artify_script(list)
    elseif a:type ==# 'script_bold'
        let result = Artify_script_bold(list)
    elseif a:type ==# 'fraktur'  " lack of many characters
        let result = Artify_fraktur(list)
    elseif a:type ==# 'fraktur_bold'
        let result = Artify_fraktur_bold(list)
    elseif a:type ==# 'sans_serif'  " +number
        let result = Artify_sans_serif(list)
    elseif a:type ==# 'sans_serif_bold'  " +number
        let result = Artify_sans_serif_bold(list)
    elseif a:type ==# 'sans_serif_italic'
        let result = Artify_sans_serif_italic(list)
    elseif a:type ==# 'sans_serif_bold_italic'
        let result = Artify_sans_serif_bold_italic(list)
    elseif a:type ==# 'monospace'  " +number
        let result = Artify_monospace(list)
    elseif a:type ==# 'double_struck'  " +number  lack of many characters
        let result = Artify_double_struck(list)
    else
        let result = ''
    endif
    return result
endfunction
"{{{Artify_circled()
function! Artify_circled(list)
    let list_artify = []
    for element in a:list
        if element ==# 'a'
            let list_artify = list_artify + ['ⓐ']
        elseif element ==# 'b'
            let list_artify = list_artify + ['ⓑ']
        elseif element ==# 'c'
            let list_artify = list_artify + ['ⓒ']
        elseif element ==# 'd'
            let list_artify = list_artify + ['ⓓ']
        elseif element ==# 'e'
            let list_artify = list_artify + ['ⓔ']
        elseif element ==# 'f'
            let list_artify = list_artify + ['ⓕ']
        elseif element ==# 'g'
            let list_artify = list_artify + ['ⓖ']
        elseif element ==# 'h'
            let list_artify = list_artify + ['ⓗ']
        elseif element ==# 'i'
            let list_artify = list_artify + ['ⓘ']
        elseif element ==# 'j'
            let list_artify = list_artify + ['ⓙ']
        elseif element ==# 'k'
            let list_artify = list_artify + ['ⓚ']
        elseif element ==# 'l'
            let list_artify = list_artify + ['ⓛ']
        elseif element ==# 'm'
            let list_artify = list_artify + ['ⓜ']
        elseif element ==# 'n'
            let list_artify = list_artify + ['ⓝ']
        elseif element ==# 'o'
            let list_artify = list_artify + ['ⓞ']
        elseif element ==# 'p'
            let list_artify = list_artify + ['ⓟ']
        elseif element ==# 'q'
            let list_artify = list_artify + ['ⓠ']
        elseif element ==# 'r'
            let list_artify = list_artify + ['ⓡ']
        elseif element ==# 's'
            let list_artify = list_artify + ['ⓢ']
        elseif element ==# 't'
            let list_artify = list_artify + ['ⓣ']
        elseif element ==# 'u'
            let list_artify = list_artify + ['ⓤ']
        elseif element ==# 'v'
            let list_artify = list_artify + ['ⓥ']
        elseif element ==# 'w'
            let list_artify = list_artify + ['ⓦ']
        elseif element ==# 'x'
            let list_artify = list_artify + ['ⓧ']
        elseif element ==# 'y'
            let list_artify = list_artify + ['ⓨ']
        elseif element ==# 'z'
            let list_artify = list_artify + ['ⓩ']
        elseif element ==# 'A'
            let list_artify = list_artify + ['Ⓐ']
        elseif element ==# 'B'
            let list_artify = list_artify + ['Ⓑ']
        elseif element ==# 'C'
            let list_artify = list_artify + ['Ⓒ']
        elseif element ==# 'D'
            let list_artify = list_artify + ['Ⓓ']
        elseif element ==# 'E'
            let list_artify = list_artify + ['Ⓔ']
        elseif element ==# 'F'
            let list_artify = list_artify + ['Ⓕ']
        elseif element ==# 'G'
            let list_artify = list_artify + ['Ⓖ']
        elseif element ==# 'H'
            let list_artify = list_artify + ['Ⓗ']
        elseif element ==# 'I'
            let list_artify = list_artify + ['Ⓘ']
        elseif element ==# 'J'
            let list_artify = list_artify + ['Ⓙ']
        elseif element ==# 'K'
            let list_artify = list_artify + ['Ⓚ']
        elseif element ==# 'L'
            let list_artify = list_artify + ['Ⓛ']
        elseif element ==# 'M'
            let list_artify = list_artify + ['Ⓜ']
        elseif element ==# 'N'
            let list_artify = list_artify + ['Ⓝ']
        elseif element ==# 'O'
            let list_artify = list_artify + ['Ⓞ']
        elseif element ==# 'P'
            let list_artify = list_artify + ['Ⓟ']
        elseif element ==# 'Q'
            let list_artify = list_artify + ['Ⓠ']
        elseif element ==# 'R'
            let list_artify = list_artify + ['Ⓡ']
        elseif element ==# 'S'
            let list_artify = list_artify + ['Ⓢ']
        elseif element ==# 'T'
            let list_artify = list_artify + ['Ⓣ']
        elseif element ==# 'U'
            let list_artify = list_artify + ['Ⓤ']
        elseif element ==# 'V'
            let list_artify = list_artify + ['Ⓥ']
        elseif element ==# 'W'
            let list_artify = list_artify + ['Ⓦ']
        elseif element ==# 'X'
            let list_artify = list_artify + ['Ⓧ']
        elseif element ==# 'Y'
            let list_artify = list_artify + ['Ⓨ']
        elseif element ==# 'Z'
            let list_artify = list_artify + ['Ⓩ']
        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_bold()
function! Artify_bold(list)
    let list_artify = []
    for element in a:list
        if element ==# 'a'
            let list_artify = list_artify + ["\U0001d41a"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d41b"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d41c"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d41d"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d41e"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d41f"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d420"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d421"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d422"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d423"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d424"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d425"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d426"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d427"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d428"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d429"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d42a"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d42b"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d42c"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d42d"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d42e"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d42f"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d430"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d431"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d432"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d433"]
        elseif element ==# 'A'
            let list_artify = list_artify + ["\U0001d400"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d401"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d402"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d403"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d404"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d405"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d406"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d407"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d408"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d409"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d40a"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d40b"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d40c"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d40d"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d40e"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d40f"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d410"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d411"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d412"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d413"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d414"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d415"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d416"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d417"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d418"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d419"]
        elseif element ==# '0'
            let list_artify = list_artify + ["\U0001d7ce"]
        elseif element ==# '1'
            let list_artify = list_artify + ["\U0001d7cf"]
        elseif element ==# '2'
            let list_artify = list_artify + ["\U0001d7d0"]
        elseif element ==# '3'
            let list_artify = list_artify + ["\U0001d7d1"]
        elseif element ==# '4'
            let list_artify = list_artify + ["\U0001d7d2"]
        elseif element ==# '5'
            let list_artify = list_artify + ["\U0001d7d3"]
        elseif element ==# '6'
            let list_artify = list_artify + ["\U0001d7d4"]
        elseif element ==# '7'
            let list_artify = list_artify + ["\U0001d7d5"]
        elseif element ==# '8'
            let list_artify = list_artify + ["\U0001d7d6"]
        elseif element ==# '9'
            let list_artify = list_artify + ["\U0001d7d7"]
        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_italic()
function! Artify_italic(list)
    let list_artify = []
    for element in a:list
        if element ==# 'a'
            let list_artify = list_artify + ["\U0001d44e"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d44f"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d450"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d451"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d452"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d453"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d454"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d455"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d456"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d457"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d458"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d459"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d45a"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d45b"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d45c"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d45d"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d45e"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d45f"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d460"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d461"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d462"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d463"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d464"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d465"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d466"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d467"]
        elseif element ==# 'A'
            let list_artify = list_artify + ["\U0001d434"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d435"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d436"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d437"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d438"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d439"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d43a"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d43b"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d43c"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d43d"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d43e"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d43f"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d440"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d441"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d442"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d443"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d444"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d445"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d446"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d447"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d448"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d449"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d44a"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d44b"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d44c"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d44d"]
        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_bold_italic()
function! Artify_bold_italic(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d468"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d469"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d46a"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d46b"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d46c"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d46d"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d46e"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d46f"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d470"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d471"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d472"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d473"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d474"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d475"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d476"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d477"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d478"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d479"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d47a"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d47b"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d47c"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d47d"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d47e"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d47f"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d480"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d481"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d482"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d483"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d484"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d485"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d486"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d487"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d488"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d489"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d48a"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d48b"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d48c"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d48d"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d48e"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d48f"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d490"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d491"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d492"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d493"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d494"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d495"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d496"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d497"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d498"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d499"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d49a"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d49b"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_script()
function! Artify_script(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d49c"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d49d"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d49e"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d49f"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d4a0"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d4a1"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d4a2"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d4a3"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d4a4"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d4a5"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d4a6"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d4a7"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d4a8"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d4a9"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d4aa"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d4ab"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d4ac"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d4ad"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d4ae"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d4af"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d4b0"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d4b1"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d4b2"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d4b3"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d4b4"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d4b5"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d4b6"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d4b7"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d4b8"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d4b9"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d4ba"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d4bb"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d4bc"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d4bd"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d4be"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d4bf"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d4c0"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d4c1"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d4c2"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d4c3"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d4c4"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d4c5"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d4c6"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d4c7"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d4c8"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d4c9"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d4ca"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d4cb"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d4cc"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d4cd"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d4ce"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d4cf"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_script_bold()
function! Artify_script_bold(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d4d0"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d4d1"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d4d2"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d4d3"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d4d4"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d4d5"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d4d6"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d4d7"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d4d8"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d4d9"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d4da"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d4db"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d4dc"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d4dd"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d4de"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d4df"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d4e0"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d4e1"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d4e2"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d4e3"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d4e4"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d4e5"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d4e6"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d4e7"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d4e8"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d4e9"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d4ea"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d4eb"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d4ec"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d4ed"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d4ee"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d4ef"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d4f0"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d4f1"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d4f2"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d4f3"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d4f4"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d4f5"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d4f6"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d4f7"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d4f8"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d4f9"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d4fa"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d4fb"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d4fc"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d4fd"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d4fe"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d4ff"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d500"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d501"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d502"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d503"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_fraktur()
function! Artify_fraktur(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d504"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d505"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d506"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d507"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d508"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d509"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d50a"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d50b"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d50c"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d50d"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d50e"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d50f"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d510"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d511"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d512"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d513"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d514"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d515"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d516"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d517"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d518"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d519"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d51a"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d51b"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d51c"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d51d"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d51e"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d51f"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d520"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d521"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d522"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d523"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d524"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d525"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d526"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d527"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d528"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d529"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d52a"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d52b"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d52c"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d52d"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d52e"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d52f"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d530"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d531"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d532"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d533"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d534"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d535"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d536"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d537"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_fraktur_bold()
function! Artify_fraktur_bold(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d56c"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d56d"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d56e"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d56f"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d570"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d571"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d572"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d573"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d574"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d575"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d576"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d577"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d578"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d579"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d57a"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d57b"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d57c"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d57d"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d57e"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d57f"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d580"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d581"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d582"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d583"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d584"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d585"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d586"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d587"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d588"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d589"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d58a"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d58b"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d58c"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d58d"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d58e"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d58f"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d590"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d591"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d592"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d593"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d594"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d595"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d596"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d597"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d598"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d599"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d59a"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d59b"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d59c"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d59d"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d59e"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d59f"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_double_struck()
function! Artify_double_struck(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d538"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d539"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d53a"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d53b"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d53c"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d53d"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d53e"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d53f"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d540"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d541"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d542"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d543"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d544"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d545"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d546"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d547"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d548"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d549"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d54a"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d54b"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d54c"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d54d"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d54e"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d54f"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d550"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d551"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d552"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d553"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d554"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d555"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d556"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d557"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d558"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d559"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d55a"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d55b"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d55c"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d55d"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d55e"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d55f"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d560"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d561"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d562"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d563"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d564"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d565"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d566"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d567"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d568"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d569"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d56a"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d56b"]
        elseif element ==# '0'
            let list_artify = list_artify + ["\U0001d7d8"]
        elseif element ==# '1'
            let list_artify = list_artify + ["\U0001d7d9"]
        elseif element ==# '2'
            let list_artify = list_artify + ["\U0001d7da"]
        elseif element ==# '3'
            let list_artify = list_artify + ["\U0001d7db"]
        elseif element ==# '4'
            let list_artify = list_artify + ["\U0001d7dc"]
        elseif element ==# '5'
            let list_artify = list_artify + ["\U0001d7dd"]
        elseif element ==# '6'
            let list_artify = list_artify + ["\U0001d7de"]
        elseif element ==# '7'
            let list_artify = list_artify + ["\U0001d7df"]
        elseif element ==# '8'
            let list_artify = list_artify + ["\U0001d7e0"]
        elseif element ==# '9'
            let list_artify = list_artify + ["\U0001d7e1"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_sans_serif()
function! Artify_sans_serif(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d5a0"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d5a1"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d5a2"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d5a3"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d5a4"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d5a5"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d5a6"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d5a7"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d5a8"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d5a9"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d5aa"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d5ab"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d5ac"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d5ad"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d5ae"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d5af"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d5b0"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d5b1"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d5b2"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d5b3"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d5b4"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d5b5"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d5b6"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d5b7"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d5b8"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d5b9"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d5ba"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d5bb"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d5bc"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d5bd"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d5be"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d5bf"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d5c0"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d5c1"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d5c2"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d5c3"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d5c4"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d5c5"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d5c6"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d5c7"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d5c8"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d5c9"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d5ca"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d5cb"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d5cc"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d5cd"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d5ce"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d5cf"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d5d0"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d5d1"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d5d2"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d5d3"]
        elseif element ==# '0'
            let list_artify = list_artify + ["\U0001d7e2"]
        elseif element ==# '1'
            let list_artify = list_artify + ["\U0001d7e3"]
        elseif element ==# '2'
            let list_artify = list_artify + ["\U0001d7e4"]
        elseif element ==# '3'
            let list_artify = list_artify + ["\U0001d7e5"]
        elseif element ==# '4'
            let list_artify = list_artify + ["\U0001d7e6"]
        elseif element ==# '5'
            let list_artify = list_artify + ["\U0001d7e7"]
        elseif element ==# '6'
            let list_artify = list_artify + ["\U0001d7e8"]
        elseif element ==# '7'
            let list_artify = list_artify + ["\U0001d7e9"]
        elseif element ==# '8'
            let list_artify = list_artify + ["\U0001d7ea"]
        elseif element ==# '9'
            let list_artify = list_artify + ["\U0001d7eb"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_sans_serif_bold()
function! Artify_sans_serif_bold(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d5d4"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d5d5"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d5d6"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d5d7"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d5d8"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d5d9"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d5da"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d5db"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d5dc"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d5dd"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d5de"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d5df"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d5e0"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d5e1"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d5e2"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d5e3"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d5e4"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d5e5"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d5e6"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d5e7"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d5e8"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d5e9"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d5ea"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d5eb"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d5ec"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d5ed"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d5ee"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d5ef"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d5f0"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d5f1"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d5f2"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d5f3"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d5f4"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d5f5"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d5f6"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d5f7"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d5f8"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d5f9"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d5fa"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d5fb"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d5fc"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d5fd"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d5fe"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d5ff"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d600"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d601"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d602"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d603"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d604"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d605"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d606"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d607"]
        elseif element ==# '0'
            let list_artify = list_artify + ["\U0001d7ec"]
        elseif element ==# '1'
            let list_artify = list_artify + ["\U0001d7ed"]
        elseif element ==# '2'
            let list_artify = list_artify + ["\U0001d7ee"]
        elseif element ==# '3'
            let list_artify = list_artify + ["\U0001d7ef"]
        elseif element ==# '4'
            let list_artify = list_artify + ["\U0001d7f0"]
        elseif element ==# '5'
            let list_artify = list_artify + ["\U0001d7f1"]
        elseif element ==# '6'
            let list_artify = list_artify + ["\U0001d7f2"]
        elseif element ==# '7'
            let list_artify = list_artify + ["\U0001d7f3"]
        elseif element ==# '8'
            let list_artify = list_artify + ["\U0001d7f4"]
        elseif element ==# '9'
            let list_artify = list_artify + ["\U0001d7f5"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_sans_serif_italic()
function! Artify_sans_serif_italic(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d608"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d609"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d60a"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d60b"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d60c"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d60d"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d60e"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d60f"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d610"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d611"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d612"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d613"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d614"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d615"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d616"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d617"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d618"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d619"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d61a"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d61b"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d61c"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d61d"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d61e"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d61f"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d620"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d621"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d622"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d623"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d624"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d625"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d626"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d627"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d628"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d629"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d62a"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d62b"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d62c"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d62d"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d62e"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d62f"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d630"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d631"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d632"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d633"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d634"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d635"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d636"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d637"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d638"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d639"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d63a"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d63b"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_sans_serif_bold_italic()
function! Artify_sans_serif_bold_italic(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d63c"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d63d"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d63e"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d63f"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d640"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d641"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d642"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d643"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d644"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d645"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d646"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d647"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d648"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d649"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d64a"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d64b"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d64c"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d64d"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d64e"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d64f"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d650"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d651"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d652"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d653"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d654"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d655"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d656"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d657"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d658"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d659"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d65a"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d65b"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d65c"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d65d"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d65e"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d65f"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d660"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d661"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d662"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d663"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d664"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d665"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d666"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d667"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d668"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d669"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d66a"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d66b"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d66c"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d66d"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d66e"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d66f"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_monospace()
function! Artify_monospace(list)
    let list_artify = []
    for element in a:list
        if element ==# 'A'
            let list_artify = list_artify + ["\U0001d670"]
        elseif element ==# 'B'
            let list_artify = list_artify + ["\U0001d671"]
        elseif element ==# 'C'
            let list_artify = list_artify + ["\U0001d672"]
        elseif element ==# 'D'
            let list_artify = list_artify + ["\U0001d673"]
        elseif element ==# 'E'
            let list_artify = list_artify + ["\U0001d674"]
        elseif element ==# 'F'
            let list_artify = list_artify + ["\U0001d675"]
        elseif element ==# 'G'
            let list_artify = list_artify + ["\U0001d676"]
        elseif element ==# 'H'
            let list_artify = list_artify + ["\U0001d677"]
        elseif element ==# 'I'
            let list_artify = list_artify + ["\U0001d678"]
        elseif element ==# 'J'
            let list_artify = list_artify + ["\U0001d679"]
        elseif element ==# 'K'
            let list_artify = list_artify + ["\U0001d67a"]
        elseif element ==# 'L'
            let list_artify = list_artify + ["\U0001d67b"]
        elseif element ==# 'M'
            let list_artify = list_artify + ["\U0001d67c"]
        elseif element ==# 'N'
            let list_artify = list_artify + ["\U0001d67d"]
        elseif element ==# 'O'
            let list_artify = list_artify + ["\U0001d67e"]
        elseif element ==# 'P'
            let list_artify = list_artify + ["\U0001d67f"]
        elseif element ==# 'Q'
            let list_artify = list_artify + ["\U0001d680"]
        elseif element ==# 'R'
            let list_artify = list_artify + ["\U0001d681"]
        elseif element ==# 'S'
            let list_artify = list_artify + ["\U0001d682"]
        elseif element ==# 'T'
            let list_artify = list_artify + ["\U0001d683"]
        elseif element ==# 'U'
            let list_artify = list_artify + ["\U0001d684"]
        elseif element ==# 'V'
            let list_artify = list_artify + ["\U0001d685"]
        elseif element ==# 'W'
            let list_artify = list_artify + ["\U0001d686"]
        elseif element ==# 'X'
            let list_artify = list_artify + ["\U0001d687"]
        elseif element ==# 'Y'
            let list_artify = list_artify + ["\U0001d688"]
        elseif element ==# 'Z'
            let list_artify = list_artify + ["\U0001d689"]
        elseif element ==# 'a'
            let list_artify = list_artify + ["\U0001d68a"]
        elseif element ==# 'b'
            let list_artify = list_artify + ["\U0001d68b"]
        elseif element ==# 'c'
            let list_artify = list_artify + ["\U0001d68c"]
        elseif element ==# 'd'
            let list_artify = list_artify + ["\U0001d68d"]
        elseif element ==# 'e'
            let list_artify = list_artify + ["\U0001d68e"]
        elseif element ==# 'f'
            let list_artify = list_artify + ["\U0001d68f"]
        elseif element ==# 'g'
            let list_artify = list_artify + ["\U0001d690"]
        elseif element ==# 'h'
            let list_artify = list_artify + ["\U0001d691"]
        elseif element ==# 'i'
            let list_artify = list_artify + ["\U0001d692"]
        elseif element ==# 'j'
            let list_artify = list_artify + ["\U0001d693"]
        elseif element ==# 'k'
            let list_artify = list_artify + ["\U0001d694"]
        elseif element ==# 'l'
            let list_artify = list_artify + ["\U0001d695"]
        elseif element ==# 'm'
            let list_artify = list_artify + ["\U0001d696"]
        elseif element ==# 'n'
            let list_artify = list_artify + ["\U0001d697"]
        elseif element ==# 'o'
            let list_artify = list_artify + ["\U0001d698"]
        elseif element ==# 'p'
            let list_artify = list_artify + ["\U0001d699"]
        elseif element ==# 'q'
            let list_artify = list_artify + ["\U0001d69a"]
        elseif element ==# 'r'
            let list_artify = list_artify + ["\U0001d69b"]
        elseif element ==# 's'
            let list_artify = list_artify + ["\U0001d69c"]
        elseif element ==# 't'
            let list_artify = list_artify + ["\U0001d69d"]
        elseif element ==# 'u'
            let list_artify = list_artify + ["\U0001d69e"]
        elseif element ==# 'v'
            let list_artify = list_artify + ["\U0001d69f"]
        elseif element ==# 'w'
            let list_artify = list_artify + ["\U0001d6a0"]
        elseif element ==# 'x'
            let list_artify = list_artify + ["\U0001d6a1"]
        elseif element ==# 'y'
            let list_artify = list_artify + ["\U0001d6a2"]
        elseif element ==# 'z'
            let list_artify = list_artify + ["\U0001d6a3"]
        elseif element ==# '0'
            let list_artify = list_artify + ["\U0001d7f6"]
        elseif element ==# '1'
            let list_artify = list_artify + ["\U0001d7f7"]
        elseif element ==# '2'
            let list_artify = list_artify + ["\U0001d7f8"]
        elseif element ==# '3'
            let list_artify = list_artify + ["\U0001d7f9"]
        elseif element ==# '4'
            let list_artify = list_artify + ["\U0001d7fa"]
        elseif element ==# '5'
            let list_artify = list_artify + ["\U0001d7fb"]
        elseif element ==# '6'
            let list_artify = list_artify + ["\U0001d7fc"]
        elseif element ==# '7'
            let list_artify = list_artify + ["\U0001d7fd"]
        elseif element ==# '8'
            let list_artify = list_artify + ["\U0001d7fe"]
        elseif element ==# '9'
            let list_artify = list_artify + ["\U0001d7ff"]

        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
