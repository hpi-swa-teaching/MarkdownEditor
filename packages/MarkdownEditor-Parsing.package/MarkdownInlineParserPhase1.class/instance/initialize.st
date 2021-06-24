initialize-release
initialize

	self delimiters: MarkdownLinkedList new.
	self inlineElements: MarkdownLinkedList new.
	self previousChar: ' '