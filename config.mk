# user to ssh to
REMOTE_HOST := "<user>@<host>"

# Remote path (relative to remove $HOME)
REMOTE_DIR := "public_html"

# How can the remove path be reached in a browser?
WEB_REMOTE := "http://<host>/${PROJECT}"
#WEB_REMOTE := "http://<host>/<path>/${PROJECT}"

# we keep that url separate, because that is 18MB. Be sure that additional
# themes are placed there, too.
# Can be created by scping the local reveal.js to remote
REVEAL_URL := "http://<host>/reveal.js"
#REVEAL_URL := "http://<host>/<path>/reveal.js"
