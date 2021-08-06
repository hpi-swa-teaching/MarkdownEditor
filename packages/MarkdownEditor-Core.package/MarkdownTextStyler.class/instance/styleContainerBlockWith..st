styling
styleContainerBlockWith: aMarkdownContainer

	self styleChildrenOf: aMarkdownContainer.
	self text 
		addAllAttributes: (aMarkdownContainer textAttributes)
		from: (aMarkdownContainer startPosition)
		to: (aMarkdownContainer endPosition)