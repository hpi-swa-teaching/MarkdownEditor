tests
testLoadText1

	| display |
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument content: 'test')).
	self assert: display showContent first class == TextMorph.
	self assert: display showContent first text string equals: 'test'