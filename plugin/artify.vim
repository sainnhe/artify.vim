scriptencoding utf-8
function! Artify(string, type) abort
    let list = split(a:string, '\zs')
    if a:type ==# 'circled_full'
        let result = Artify_circled_full(list)
    elseif a:type ==# 'circled_half'
        let result = Artify_circled_half(list)
    elseif a:type ==# 'bold'
        let result = Artify_bold(list)
    elseif a:type ==# 'italic'
        let result = Artify_italic(list)
    elseif a:type ==# 'bold_italic'
        let result = Artify_bold_italic(list)
    elseif a:type ==# 'script'
        let result = Artify_script(list)
    elseif a:type ==# 'script_bold'
        let result = Artify_script_bold(list)
    elseif a:type ==# 'fraktur'
        let result = Artify_fraktur(list)
    elseif a:type ==# 'fraktur_bold'
        let result = Artify_fraktur_bold(list)
    elseif a:type ==# 'sans_serif'
        let result = Artify_sans_serif(list)
    elseif a:type ==# 'sans_serif_bold'
        let result = Artify_sans_serif_bold(list)
    elseif a:type ==# 'sans_serif_italic'
        let result = Artify_sans_serif_italic(list)
    elseif a:type ==# 'sans_serif_bold_italic'
        let result = Artify_sans_serif_bold_italic(list)
    elseif a:type ==# 'monospace'
        let result = Artify_monospace(list)
    else
        let result = ''
    endif
    return result
endfunction
"{{{Artify_circled_full()
function! Artify_circled_full(list)
    let list_artify = []
    for element in a:list
        if element ==# 'a'
            let list_artify = list_artify + ['ⓐ ']
        elseif element ==# 'b'
            let list_artify = list_artify + ['ⓑ ']
        elseif element ==# 'c'
            let list_artify = list_artify + ['ⓒ ']
        elseif element ==# 'd'
            let list_artify = list_artify + ['ⓓ ']
        elseif element ==# 'e'
            let list_artify = list_artify + ['ⓔ ']
        elseif element ==# 'f'
            let list_artify = list_artify + ['ⓕ ']
        elseif element ==# 'g'
            let list_artify = list_artify + ['ⓖ ']
        elseif element ==# 'h'
            let list_artify = list_artify + ['ⓗ ']
        elseif element ==# 'i'
            let list_artify = list_artify + ['ⓘ ']
        elseif element ==# 'j'
            let list_artify = list_artify + ['ⓙ ']
        elseif element ==# 'k'
            let list_artify = list_artify + ['ⓚ ']
        elseif element ==# 'l'
            let list_artify = list_artify + ['ⓛ ']
        elseif element ==# 'm'
            let list_artify = list_artify + ['ⓜ ']
        elseif element ==# 'n'
            let list_artify = list_artify + ['ⓝ ']
        elseif element ==# 'o'
            let list_artify = list_artify + ['ⓞ ']
        elseif element ==# 'p'
            let list_artify = list_artify + ['ⓟ ']
        elseif element ==# 'q'
            let list_artify = list_artify + ['ⓠ ']
        elseif element ==# 'r'
            let list_artify = list_artify + ['ⓡ ']
        elseif element ==# 's'
            let list_artify = list_artify + ['ⓢ ']
        elseif element ==# 't'
            let list_artify = list_artify + ['ⓣ ']
        elseif element ==# 'u'
            let list_artify = list_artify + ['ⓤ ']
        elseif element ==# 'v'
            let list_artify = list_artify + ['ⓥ ']
        elseif element ==# 'w'
            let list_artify = list_artify + ['ⓦ ']
        elseif element ==# 'x'
            let list_artify = list_artify + ['ⓧ ']
        elseif element ==# 'y'
            let list_artify = list_artify + ['ⓨ ']
        elseif element ==# 'z'
            let list_artify = list_artify + ['ⓩ ']
        elseif element ==# 'A'
            let list_artify = list_artify + ['Ⓐ ']
        elseif element ==# 'B'
            let list_artify = list_artify + ['Ⓑ ']
        elseif element ==# 'C'
            let list_artify = list_artify + ['Ⓒ ']
        elseif element ==# 'D'
            let list_artify = list_artify + ['Ⓓ ']
        elseif element ==# 'E'
            let list_artify = list_artify + ['Ⓔ ']
        elseif element ==# 'F'
            let list_artify = list_artify + ['Ⓕ ']
        elseif element ==# 'G'
            let list_artify = list_artify + ['Ⓖ ']
        elseif element ==# 'H'
            let list_artify = list_artify + ['Ⓗ ']
        elseif element ==# 'I'
            let list_artify = list_artify + ['Ⓘ ']
        elseif element ==# 'J'
            let list_artify = list_artify + ['Ⓙ ']
        elseif element ==# 'K'
            let list_artify = list_artify + ['Ⓚ ']
        elseif element ==# 'L'
            let list_artify = list_artify + ['Ⓛ ']
        elseif element ==# 'M'
            let list_artify = list_artify + ['Ⓜ ']
        elseif element ==# 'N'
            let list_artify = list_artify + ['Ⓝ ']
        elseif element ==# 'O'
            let list_artify = list_artify + ['Ⓞ ']
        elseif element ==# 'P'
            let list_artify = list_artify + ['Ⓟ ']
        elseif element ==# 'Q'
            let list_artify = list_artify + ['Ⓠ ']
        elseif element ==# 'R'
            let list_artify = list_artify + ['Ⓡ ']
        elseif element ==# 'S'
            let list_artify = list_artify + ['Ⓢ ']
        elseif element ==# 'T'
            let list_artify = list_artify + ['Ⓣ ']
        elseif element ==# 'U'
            let list_artify = list_artify + ['Ⓤ ']
        elseif element ==# 'V'
            let list_artify = list_artify + ['Ⓥ ']
        elseif element ==# 'W'
            let list_artify = list_artify + ['Ⓦ ']
        elseif element ==# 'X'
            let list_artify = list_artify + ['Ⓧ ']
        elseif element ==# 'Y'
            let list_artify = list_artify + ['Ⓨ ']
        elseif element ==# 'Z'
            let list_artify = list_artify + ['Ⓩ ']
        else
            let list_artify = list_artify + [element]
        endif
    endfor
    return join(list_artify, '')
endfunction
"}}}
"{{{Artify_circled_half()
function! Artify_circled_half(list)
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
