attributes
attributeFor: aLength

	aLength = 1
		ifTrue: [^ MarkdownAttribute italic]
		ifFalse: [^ MarkdownAttribute bold]