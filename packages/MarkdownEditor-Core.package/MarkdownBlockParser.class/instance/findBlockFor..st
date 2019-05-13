parsing
findBlockFor: aString

	(MarkdownHeading matches: aString)
		ifTrue: [^ MarkdownHeading newFrom: aString]
		ifFalse: [^ aString]
