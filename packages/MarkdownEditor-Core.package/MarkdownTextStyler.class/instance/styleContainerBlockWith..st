styling
styleContainerBlockWith: aMarkdownContainer

	self currentOffset: 0.
	aMarkdownContainer children 
		do: [:child | child applyStylingWith: self].
	self text 
		addAllAttributes: (aMarkdownContainer textAttributes)
		from: (aMarkdownContainer startPosition)
		to: (aMarkdownContainer endPosition)