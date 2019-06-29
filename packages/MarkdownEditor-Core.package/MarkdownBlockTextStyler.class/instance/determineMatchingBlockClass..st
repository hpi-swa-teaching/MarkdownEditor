parsing
determineMatchingBlockClass: aString

	^ {MarkdownHeading. MarkdownCodeBlock. MarkdownCommentBlock} 
		detect: [:blockClass | blockClass mayBeginWith: aString]
		ifNone: [MarkdownParagraph]