tests
testLoadBasis

	| display |
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument new)).
	self assert: display contentMorph first class == TextMorph.
	self assert: display contentMorph first text string equals: 'Sorry, this document type is not supported!'