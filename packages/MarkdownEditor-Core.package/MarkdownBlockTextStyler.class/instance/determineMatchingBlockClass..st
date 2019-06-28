parsing
determineMatchingBlockClass: aString

	^ {MarkdownHeading. MarkdownCodeBlock. MarkdownCommentBlock} 
		detect: [:blockClass | blockClass matches: aString]
		ifNone: [MarkdownParagraph]