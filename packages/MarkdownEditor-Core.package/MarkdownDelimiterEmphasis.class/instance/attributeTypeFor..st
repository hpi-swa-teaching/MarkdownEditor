attributes
attributeTypeFor: aLength

	aLength = 1
		ifTrue: [^ MarkdownAttributeItalic]
		ifFalse: [^ MarkdownAttributeBold]