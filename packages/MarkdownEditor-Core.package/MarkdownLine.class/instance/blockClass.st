accessing
blockClass

	^ {MarkdownHeading. MarkdownCodeBlock. MarkdownCommentBlock. MarkdownUnorderedList. MarkdownOrderedList } 
		detect: [:blockClass | blockClass mayBeginWith: self]
		ifNone: [MarkdownParagraph]