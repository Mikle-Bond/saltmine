
.PHONY: all dist clean

OUTPUT=index.html

%.html: %.html.pug
	pug -P < "$<" > "$@"

all: $(OUTPUT)

dist: $(OUTPUT)
	mkdir -p _site
	cp -t _site $^ 

clean:
	rm -rf _site
	rm $(OUTPUT)

