parsing
decideLinkType

	self previousChar = '!'
		ifTrue: [^ MarkdownImage]
		ifFalse: [^ MarkdownLink2]