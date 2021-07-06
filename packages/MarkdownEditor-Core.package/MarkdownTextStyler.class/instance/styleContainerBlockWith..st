styling
styleContainerBlockWith: aMarkdownContainer

	aMarkdownContainer children 
		do: [:child | child applyStylingWith: self].
	self text 
		addAllAttributes: (aMarkdownContainer textAttributes)
		from: (aMarkdownContainer startPosition)
		to: (aMarkdownContainer endPosition)