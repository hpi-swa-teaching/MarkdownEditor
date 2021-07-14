styling
styleInlineContainerBlockWith: aMarkdownContainer

	aMarkdownContainer children 
		do: [:child | child applyStylingWith: self].
	self text 
		addAllAttributes: (aMarkdownContainer textAttributes)
		from: (aMarkdownContainer startPosition + self currentOffset - 1)
		to: (aMarkdownContainer endPosition + self currentOffset - 1)