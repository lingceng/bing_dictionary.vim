# bing_dictionary.vim
Find translation in vim with [bing_dictionary](https://github.com/lingceng/bing_dictionary).

## Installation

If you don't have a preferred installation method, I recommend
installing [Vundle.vim](https://github.com/VundleVim/Vundle.vim), and
add following to your ~/.vimrc:

    Plugin 'lingceng/bing_dictionary.vim'

## Usage

    :Dict hello

You can add maps like following:

    nmap <leader>dd viw<leader>dd
    vnoremap <leader>dd y:Dict <C-R>"<CR>

## License

Copyright (c) Lingceng.  Distributed under the same terms as Vim itself.
See `:help license`.
