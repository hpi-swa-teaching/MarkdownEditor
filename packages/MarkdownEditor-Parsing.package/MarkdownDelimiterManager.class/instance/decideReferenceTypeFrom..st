handle emphasis
decideReferenceTypeFrom: aPreviousChar

	aPreviousChar = '!'
		ifTrue: [^ MarkdownImage]
		ifFalse: [^ MarkdownLink2]