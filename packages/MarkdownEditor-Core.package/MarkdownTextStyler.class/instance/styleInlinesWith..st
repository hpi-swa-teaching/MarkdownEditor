styling
styleInlinesWith: aMarkdownInline

	self text 
		addAllAttributes: (aMarkdownInline textAttributes)
		from: (aMarkdownInline startPosition + self currentOffset - 1)
		to: (aMarkdownInline endPosition + self currentOffset - 1)