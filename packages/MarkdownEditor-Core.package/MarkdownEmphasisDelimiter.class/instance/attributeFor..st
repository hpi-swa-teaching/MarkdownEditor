attributes
attributeFor: aLength

	aLength = 1
		ifTrue: [^ MarkdownEmphasis italic]
		ifFalse: [^ MarkdownEmphasis bold]