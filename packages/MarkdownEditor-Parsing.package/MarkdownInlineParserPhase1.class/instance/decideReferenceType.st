helpers - reference
decideReferenceType

	self previousChar = MarkdownImage imageChar
		ifTrue: [^ MarkdownImage]
		ifFalse: [^ MarkdownLink2]