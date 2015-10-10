build/nnlp.xml:
	latexml --dest=build/nnlp.xml root

build/nnlp.html: build/nnlp.xml
	latexmlpost -dest=build/nnlp.html build/nnlp.xml

build/nnlp.epub: build/nnlp.html
	ebook-convert build/nnlp.html build/nnlp.epub --language en --no-default-epub-cover

all: build/nnlp.html build/nnlp.epub
