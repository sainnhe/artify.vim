# Introduction

This plugin can change the display of characters **without changing font**.

![](./screenshots/artify.gif)

Thus, you can use it to tweak your vim UI. For example, change the display of tab line and status line.

![](./screenshots/artify_statusline.png)

The principle of this plugin is very simple: convert English characters into special unicodes.

https://unicode-table.com/en/#1D400

https://unicode-table.com/en/#24B6

To be honest, I have another purpose to develop this plugin -- generate nickname and biography conveniently.

For example, my twitter name is "Sainnhepark", and now I can use this plugin to convert this string into "𝓢𝓪𝓲𝓷𝓷𝓱𝓮𝓹𝓪𝓻𝓴". Don't you think this is cooler than plain text? LOL

# Installation

for [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'sainnhe/artify.vim'
```

# Usage

`:echo Artify('foo', 'script_bold')`

The first parameter is the string you want to convert, and the second parameter is the "artify" type.

All available types are listed blow:

| type                   | 0-9 available? | all a-Z characters available? |
| ---------------------- | -------------- | ----------------------------- |
| circled                | no             | yes                           |
| bold                   | yes            | yes                           |
| italic                 | no             | no                            |
| bold_italic            | no             | yes                           |
| script                 | no             | no                            |
| script_bold            | no             | yes                           |
| fraktur                | no             | no                            |
| fraktur_bold           | no             | yes                           |
| sans_serif             | yes            | yes                           |
| sans_serif_bold        | yes            | yes                           |
| sans_serif_italic      | no             | yes                           |
| sans_serif_bold_italic | no             | yes                           |
| monospace              | yes            | yes                           |
| double_struck          | yes            | no                            |

