# user to ssh to
REMOTE_HOST := "user@host"

# Remote path (relative to remove $HOME)
REMOTE_DIR := "public_html"

# How can the remove path be reached in a browser?
REMOTE_URL := "http://${REMOTE_HOST}/${PROJECT}"
#REMOTE_URL := "http://<host>/<path>/${PROJECT}"

# we keep that url separate, because that is 18MB. Be sure that additional
# themes are placed there, too.
# Can be created by `make remote-reveal` 
#
# You can tweak these, but please be careful (watch the command in
# the remote-reveal target)
REVEAL_HOST := ${REMOTE_HOST}
REVEAL_DIR  := "public_html/reveal.js"
REVEAL_URL := "${REVEAL_HOST}/${REVEAL_DIR}"
#REVEAL_URL := "http://<host>/<path>/reveal.js"
