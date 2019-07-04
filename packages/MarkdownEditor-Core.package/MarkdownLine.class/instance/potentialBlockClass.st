accessing
potentialBlockClass

	^ {MarkdownHeading. MarkdownCodeBlock. MarkdownCommentBlock} 
		detect: [:blockClass | blockClass mayBeginWith: self]
		ifNone: [MarkdownParagraph]