styling
styleContainerBlockWith: aMarkdownContainer

	self styleChildrenFrom: aMarkdownContainer.
	self text 
		addAllAttributes: (aMarkdownContainer textAttributes)
		from: (aMarkdownContainer startPosition)
		to: (aMarkdownContainer endPosition)