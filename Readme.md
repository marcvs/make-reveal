# Make Reveal

A simple Makefile for markdown and reveal.js

## Usage:

- Make sure pandoc is installed
- Create a folder named <name>
- Create a mardkown file in that folder named <name>.md
- Symlink the `Makefile` of this repo into that folder
- Copy and adjust the `config.mk` of this repo to the folder
- Either run `make view`  or `make view-remote` and be happy
- Or submit a bug here.

## Configuration

See the top level of the Makefile.

The `REVEAL_URL` can be created by scping the reveal.js folder to a web
location after an inital `make reveal.js`


Have fun.
M.
