## Introduction

This plugin can change the display of characters **without changing font**.

```vim
echo artify#convert('Introduction', 'bold')  " 𝐈𝐧𝐭𝐫𝐨𝐝𝐮𝐜𝐭𝐢𝐨𝐧
echo artify#convert('Introduction', 'italic')  " 𝐼𝑛𝑡𝑟𝑜𝑑𝑢𝑐𝑡𝑖𝑜𝑛
echo artify#convert('Introduction', 'bold_italic')  " 𝑰𝒏𝒕𝒓𝒐𝒅𝒖𝒄𝒕𝒊𝒐𝒏
```

Thus, you can use it to tweak your vim UI. For example, change the display of tab line and status line.

![lightline](https://gitlab.com/sainnhe/img/-/raw/master/Screenshot_20200408_194111.png)

The implementation of this plugin is very simple: convert English characters to special unicodes.

https://unicode-table.com/en/#1D400

https://unicode-table.com/en/#24B6

To be honest, I have another purpose to develop this plugin -- generate nickname and biography conveniently.

For example, my twitter name is "Sainnhepark", and now I can use this plugin to convert this string into "𝓢𝓪𝓲𝓷𝓷𝓱𝓮𝓹𝓪𝓻𝓴". Don't you think this is cooler than plain text? LOL

## Performance

This plugin is implemented in pure vim script, I've tried my best to optimize it's performance, but it's still quite slow.

For neovim users, consider this [lua implementation](https://github.com/delphinus/artify.nvim) instead.

## Installation

If you are using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'sainnhe/artify.vim'
```

## Usage

```vim
artify#convert('Introduction', 'italic')
```

The first parameter is the string you want to convert, and the second parameter is the "artify style".

All available styles are listed blow:

| style                  | 0-9 available? | all a-Z characters available? |
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

## Example Configuration

See this [post](https://blog.sainnhe.dev/post/status-line-config/).

## Licence

[GPL v3](./LICENSE)

