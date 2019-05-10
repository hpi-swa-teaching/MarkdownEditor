attributes
attributeTypeStartingAt: aMarkdownDelimiterEmphasis

	((self length >= self boldLength) and: [aMarkdownDelimiterEmphasis length >= self boldLength])
		ifTrue: [^ MarkdownAttributeBold]
		ifFalse: [^ MarkdownAttributeItalic]