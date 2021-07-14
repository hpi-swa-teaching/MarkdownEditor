styling
styleLeafBlockWith: aMarkdownLeaf

	self currentOffset: aMarkdownLeaf startPosition.
	aMarkdownLeaf inlines
		do: [:inline | inline applyStylingWith: self].
	self text 
		addAllAttributes: (aMarkdownLeaf textAttributes)
		from: (aMarkdownLeaf startPosition)
		to: (aMarkdownLeaf endPosition)