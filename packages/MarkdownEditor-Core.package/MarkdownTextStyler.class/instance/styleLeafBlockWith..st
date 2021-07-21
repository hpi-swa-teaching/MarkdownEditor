styling
styleLeafBlockWith: aMarkdownLeaf

	| inlineText |
	inlineText := self styleInlinesOf: aMarkdownLeaf.
	self copyAttributesFrom: inlineText 
		from: aMarkdownLeaf startPosition 
		to: aMarkdownLeaf endPosition.
	self text 
		addAllAttributes: (aMarkdownLeaf textAttributes)
		from: (aMarkdownLeaf startPosition)
		to: (aMarkdownLeaf endPosition)