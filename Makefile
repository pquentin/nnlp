xml:
	latexml --dest=build/nnlp.xml root

html: xml
	latexmlpost -dest=build/nnlp.html build/nnlp.xml

epub: html
	ebook-convert build/nnlp.html build/nnlp.epub --language en --no-default-epub-cover
