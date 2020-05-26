parsing
cutCloser: closingMarkdownDelimiter to: aLength

	closingMarkdownDelimiter length > aLength 
		ifTrue: [^ self tokens 
			add: (closingMarkdownDelimiter cutFromStart: aLength) asStringToken 
			before: closingMarkdownDelimiter]
		ifFalse: [^ self tokens 
			at: (self tokens indexOf: closingMarkdownDelimiter) 
			put: closingMarkdownDelimiter asStringToken]
