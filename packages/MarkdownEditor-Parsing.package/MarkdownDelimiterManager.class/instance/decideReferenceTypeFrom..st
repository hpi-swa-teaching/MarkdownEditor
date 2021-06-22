handle references
decideReferenceTypeFrom: aPreviousChar

	aPreviousChar = '!'
		ifTrue: [^ MarkdownImage]
		ifFalse: [^ MarkdownLink2]