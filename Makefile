xml:
	latexml --dest=build/nnlp.xml root

html: xml
	latexmlpost -dest=build/nnlp.html build/nnlp.xml
