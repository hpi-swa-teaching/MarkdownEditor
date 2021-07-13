initialize-release
initialize

	self delimiters: MarkdownLinkedList new.
	self inlineElements: MarkdownLinkedList new.
	self currentIndex: 1.
	self previousChar: ' '