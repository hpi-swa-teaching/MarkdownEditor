accessing
blockClass

	^ {MarkdownHeading. MarkdownCodeBlock. MarkdownCommentBlock. MarkdownUnorderedList} 
		detect: [:blockClass | blockClass mayBeginWith: self]
		ifNone: [MarkdownParagraph]