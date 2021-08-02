styling
styleLeafBlockWith: aMarkdownLeaf

	aMarkdownLeaf inlineElements 
		ifNotEmpty: [| inlineText |
			inlineText := self styleInlinesOf: aMarkdownLeaf.
			self copyAttributesFrom: inlineText 
				from: aMarkdownLeaf innerStartPosition 
				to: aMarkdownLeaf endPosition
				with: false].
	self text 
		addAllAttributes: (aMarkdownLeaf textAttributes)
		from: (aMarkdownLeaf startPosition)
		to: (aMarkdownLeaf endPosition)