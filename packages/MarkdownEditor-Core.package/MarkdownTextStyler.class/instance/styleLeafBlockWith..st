styling
styleLeafBlockWith: aMarkdownLeaf

	aMarkdownLeaf inlines
		do: [:inline | inline applyStylingWith: self].
	self text 
		addAllAttributes: (aMarkdownLeaf textAttributes)
		from: (aMarkdownLeaf startPosition)
		to: (aMarkdownLeaf endPosition)