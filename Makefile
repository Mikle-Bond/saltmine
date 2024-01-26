
all: index.html

%.html: %.html.pug
	pug -P < "$<" > "$@"

