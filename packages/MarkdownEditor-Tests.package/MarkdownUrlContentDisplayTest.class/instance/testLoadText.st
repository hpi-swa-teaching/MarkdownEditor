tests
testLoadText

	| display |
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument content: 'test')).
	self assert: display contentMorph first class == TextMorph.
	self assert: display contentMorph first text string equals: 'test'