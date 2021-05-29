tests
testLoadText2

	| display |
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument content: 'error occured retrieving ')).
	self assert: display showContent first class == TextMorph.
	self assert: display showContent first text string equals: display invalidSourceMessage