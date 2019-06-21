parsing
determineMatchingBlockClass: aString

	(MarkdownHeading matches: aString)
		ifTrue: [^ MarkdownHeading]
		ifFalse: [(MarkdownCodeBlock matches: aString)
			ifTrue: [^ MarkdownCodeBlock]
			ifFalse: [^ MarkdownParagraph]]