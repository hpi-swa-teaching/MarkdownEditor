parsing
removeDelimitersBetween: openingMarkdownEmphasisDelimiter and: closingMarkdownEmphasisDelimiter

	| openIndex closeIndex |
	openIndex := self tokens indexOf: openingMarkdownEmphasisDelimiter.
	closeIndex := self tokens indexOf: closingMarkdownEmphasisDelimiter.
	(self tokens copyFrom: openIndex + 1 to: closeIndex - 1) 
		select: [:token | token isDelimiter]
		thenDo: [:delimiter |
			self tokens 
				at: (self tokens indexOf: delimiter) 
				put: delimiter asStringToken]