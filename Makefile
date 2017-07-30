PANDOC = pandoc
HTMLFILES := $(shell ls *.md | sed -e 's/\.md/.html/g' )

all: $(HTMLFILES)

%.html: %.md Makefile
	pandoc --to html5+yaml_metadata_block+implicit_figures --standalone --self-contained --output $@ $<
