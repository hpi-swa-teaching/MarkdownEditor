parsing
delimitersBetween: openingMarkdownDelimiter and: closingMarkdownDelimiter

	| openIndex closeIndex |
	openIndex := self tokens indexOf: openingMarkdownDelimiter.
	closeIndex := self tokens indexOf: closingMarkdownDelimiter.
	^ (self tokens copyFrom: openIndex + 1 to: closeIndex - 1) 
		select: [:token | token isDelimiter]