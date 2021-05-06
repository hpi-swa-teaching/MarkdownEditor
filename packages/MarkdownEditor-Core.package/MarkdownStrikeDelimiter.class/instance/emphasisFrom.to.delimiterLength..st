attribute
emphasisFrom: start to: end delimiterLength: aLength

	aLength = 2
		ifTrue: [^ MarkdownStrike from: start to: end]
		ifFalse: [^ nil]