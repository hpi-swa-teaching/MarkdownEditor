styling
styleInlinesWith: aMarkdownInline

	self text 
		addAllAttributes: (aMarkdownInline textAttributes)
		from: (aMarkdownInline startPosition)
		to: (aMarkdownInline endPosition)