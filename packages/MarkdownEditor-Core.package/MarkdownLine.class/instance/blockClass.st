accessing
blockClass

	^ MarkdownEditor blockClasses 
		detect: [:blockClass | blockClass mayBeginWith: self]
		ifNone: [MarkdownParagraph]