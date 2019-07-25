attributes
emphasisFrom: start to: end delimiterLength: aLength
	
	aLength = 1
		ifTrue: [^ MarkdownEmphasis from: start to: end]
		ifFalse: [^ MarkdownEmphasis strongFrom: start to: end]