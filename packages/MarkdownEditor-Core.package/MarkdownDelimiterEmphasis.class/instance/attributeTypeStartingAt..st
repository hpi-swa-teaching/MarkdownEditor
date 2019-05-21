attributes
attributeTypeStartingAt: openingMarkdownDelimiterEmphasis

	((self length >= self boldLength) and: [openingMarkdownDelimiterEmphasis length >= self boldLength])
		ifTrue: [^ MarkdownAttributeBold]
		ifFalse: [^ MarkdownAttributeItalic]