parsing
determineMatchingBlockClass: aString

	^ {MarkdownHeading. MarkdownCodeBlock. MarkdownCommentBlock. MarkdownParagraph} detect: [:blockClass |
		blockClass matches: aString]