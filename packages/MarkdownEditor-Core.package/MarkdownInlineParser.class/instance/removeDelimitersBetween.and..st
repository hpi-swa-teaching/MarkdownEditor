parsing
removeDelimitersBetween: openingMarkdownDelimiterEmphasis and: closingMarkdownDelimiterEmphasis

	| openIndex closeIndex |
	openIndex := self tokens indexOf: openingMarkdownDelimiterEmphasis.
	closeIndex := self tokens indexOf: closingMarkdownDelimiterEmphasis.
	(self tokens copyFrom: openIndex + 1 to: closeIndex - 1) 
		select: [:token | token isDelimiter]
		thenDo: [:delimiter |
			self tokens 
				at: (self tokens indexOf: delimiter) 
				put: delimiter asStringToken]