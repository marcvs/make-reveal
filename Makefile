# .SUFFIXES: .html .md
PROJECT:=$(shell basename `pwd`)
BASEDIR:=$(shell echo `pwd`)

include config.mk

REMOTE := ${REMOTE_HOST}:~/${REMOTE_DIR}/${PROJECT}
REVEAL := ${REVEAL_HOST}:~/${REVEAL_DIR}

vpath %.md markdown
vpath %.html html

%.html: %.md reveal.js
	@pandoc -t revealjs --standalone -f markdown  -V revealjs-url=reveal.js -o $@-preview.html $<
	@pandoc -t revealjs --standalone -f markdown  -V revealjs-url=$(REVEAL_URL) -o $@ $<
	@#pandoc -t revealjs --standalone -f markdown -o $@ $<
	@#pandoc -t revealjs --mathjax --self-contained --standalone -f markdown -o $@ $<
	@#pandoc -t revealjs           --self-contained --standalone -f markdown -o $@ $<

remote-reveal: reveal.js
	@#@ssh ${REVEAL_HOST} 'test -d ${REVEAL_DIR} && rm -rf ${REVEAL_DIR}'
	@#scp -rp reveal.js ${REVEAL}
	@rsync -rlutopgxv reveal.js/ ${REVEAL}/

default: ${PROJECT}.html
	@echo ${PROJECT}

reveal.js: 
	@git clone https://github.com/hakimel/reveal.js.git -b 3.9.2 > /dev/null 2>&1
	@curl -s marcus.hardt-it.de/reveal-theme-marcus.css > reveal.js/css/theme/marcus.css
	@test -d images || mkdir images

publish: reveal.js default
	@ssh ${REMOTE_HOST} "cd ${REMOTE_DIR}/; test -e `basename ${REMOTE}` || mkdir `basename ${REMOTE}`"
	@scp ${PROJECT}.html ${REMOTE}/index.html
	@rsync -rlutopgx images ${REMOTE}/
	@echo  "\nPublished to $(REMOTE_URL)\n"

view-remote: publish
	@firefox $(REMOTE_URL)

view: reveal.js default
	@firefox file://$(BASEDIR)/$(PROJECT).html-preview.html

publish-all: publish
	@ssh hardt-it.de "cd web/`basename ${REMOTE}`; test -e reveal.js || ln -s ../reveal.js ."

.PHONY: clean
clean:
	rm *.html

.PHONY: distclean
distclean: clean
	rm -rf reveal.js

