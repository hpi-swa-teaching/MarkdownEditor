styling
styleListItemWith: aMarkdownList

	self text 
		addAllAttributes: (aMarkdownList textAttributes)
		from: (aMarkdownList startPosition)
		to: (aMarkdownList endPosition).
	aMarkdownList children 
		do: [:child | child applyStylingWith: self]
	