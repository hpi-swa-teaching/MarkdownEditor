initialize-release
initialize

	super initialize.
	self content: '';
		inlines: MarkdownLinkedList new;
		innerStartPosition: 0