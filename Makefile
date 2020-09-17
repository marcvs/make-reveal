# .SUFFIXES: .html .md
PROJECT:=$(shell basename `pwd`)
BASEDIR:=$(shell echo `pwd`)

############################################
# Configure these:
REMOTE_HOST := marcus@hardt-it.de
REMOTE_DIR := web
WEB_REMOTE := "http://marcus.hardt-it.de/${PROJECT}"
# we keep that url separate, because that is 18MB. Be sure that additional
# themes are placed there, too
REVEAL_URL := "http://marcus.hardt-it.de/reveal.js"
# Config done
############################################

REMOTE := ${REMOTE_HOST}:~/${REMOTE_DIR}/${PROJECT}

vpath %.md markdown
vpath %.html html

%.html: %.md reveal.js
	@pandoc -t revealjs --standalone -f markdown  -V revealjs-url=reveal.js -o $@-preview.html $<
	@pandoc -t revealjs --standalone -f markdown  -V revealjs-url=$(REVEAL_URL) -o $@ $<
	@#pandoc -t revealjs --standalone -f markdown -o $@ $<
	@#pandoc -t revealjs --mathjax --self-contained --standalone -f markdown -o $@ $<
	@#pandoc -t revealjs           --self-contained --standalone -f markdown -o $@ $<

default: ${PROJECT}.html
	@echo ${PROJECT}

reveal.js: 
	@git clone https://github.com/hakimel/reveal.js.git -b 3.9.2
	@curl -s marcus.hardt-it.de/reveal-theme-marcus.css > reveal.js/css/theme/marcus.css
	@mkdir images

publish: reveal.js default
	@ssh REMOTE_HOST "cd ${REMOTE_DIR}/; test -e `basename ${REMOTE}` || mkdir `basename ${REMOTE}`"
	@scp ${PROJECT}.html ${REMOTE}/index.html
	@rsync -rlutopgx images ${REMOTE}/
	@echo  "\nPublished to $(WEB_REMOTE)\n"

view-remote: publish
	firefox $(WEB_REMOTE)

view: reveal.js default
	firefox file://$(BASEDIR)/$(PROJECT).html-preview.html

publish-all: publish
	@ssh hardt-it.de "cd web/`basename ${REMOTE}`; test -e reveal.js || ln -s ../reveal.js ."

.PHONY: clean
clean:
	rm *.html

.PHONY: distclean
distclean: clean
	rm -rf reveal.js

