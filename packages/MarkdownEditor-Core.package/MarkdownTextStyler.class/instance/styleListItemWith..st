styling
styleListItemWith: aMarkdownListItem

	self text 
		addAllAttributes: (aMarkdownListItem textAttributes)
		from: (aMarkdownListItem startPosition)
		to: (aMarkdownListItem endPosition).
	aMarkdownListItem children 
		do: [:child | child applyStylingWith: self]
	