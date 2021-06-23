helper
decideReferenceType

	self previousChar = '!'
		ifTrue: [^ MarkdownImage]
		ifFalse: [^ MarkdownLink2]