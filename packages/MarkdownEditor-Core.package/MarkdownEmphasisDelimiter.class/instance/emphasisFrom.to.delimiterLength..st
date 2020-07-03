attributes
emphasisFrom: start to: end delimiterLength: aLength
	
	aLength = 1
		ifTrue: [^ MarkdownItalic from: start to: end]
		ifFalse: [^ MarkdownBold from: start to: end]