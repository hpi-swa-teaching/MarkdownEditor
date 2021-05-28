tests
testLoadBasis

	| display |
	display := (MarkdownUrlContentDisplay new mime: (MIMEDocument new)).
	self assert: display showContent first class == TextMorph.
	self assert: display showContent first text string equals: display unsupportedDocumentMessage