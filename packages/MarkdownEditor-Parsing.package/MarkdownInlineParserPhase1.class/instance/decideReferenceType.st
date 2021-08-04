helpers - reference
decideReferenceType

	self previousChar = MarkdownImage imageCharacter asString
		ifTrue: [^ MarkdownImage]
		ifFalse: [^ MarkdownLink]