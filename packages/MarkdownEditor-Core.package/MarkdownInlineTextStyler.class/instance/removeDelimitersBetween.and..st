parsing
removeDelimitersBetween: openingMarkdownDelimiter and: closingMarkdownDelimiter

	(self delimitersBetween: openingMarkdownDelimiter and: closingMarkdownDelimiter) 
		do: [:delimiter |
			self tokens 
				at: (self tokens indexOf: delimiter) 
				put: delimiter asStringToken]