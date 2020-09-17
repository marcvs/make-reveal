# Make Reveal

A simple Makefile for markdown and reveal.js

Depends on pandoc

## Install:

- Create a folder named `<name>`
- Create a mardkown file in that folder named `<name>.md`
- Symlink the `Makefile` of this repo into that folder
- Copy and adjust the `config.mk` of this repo to the folder
- `make remote-reveal` for installing a global reveal.js folder on your
    remote server

## Use:
- Either run `make view`  or `make view-remote` and be happy
- Or submit a bug here.

## Configuration

See config.mk

The `REVEAL_URL` can be created by scping the reveal.js folder to a web
location after an inital `make reveal.js`

## VIM Integration:
Probably not perfect, but I use this:
```
    autocmd FileType markdown map <leader>ll :make<cr><cr>:!~/bin/firefox-refresh.sh <cr><cr>
    autocmd FileType markdown map <leader>lp :make publish<cr>
    autocmd FileType markdown map <leader>lv :make view<cr><cr>
```


Have fun.

M.
