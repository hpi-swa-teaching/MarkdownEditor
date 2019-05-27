parsing
createBlockFor: aString

	(MarkdownHeading matches: aString)
		ifTrue: [^ MarkdownHeading newFrom: aString]
		ifFalse: [^ MarkdownParagraph newFrom: aString]