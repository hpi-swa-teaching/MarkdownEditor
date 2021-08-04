initialize-release
initialize

	super initialize.
	self content: '';
		inlineElements: MarkdownLinkedList new;
		innerStartPosition: 0