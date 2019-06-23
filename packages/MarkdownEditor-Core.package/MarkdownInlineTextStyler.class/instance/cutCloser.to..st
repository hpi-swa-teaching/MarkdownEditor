parsing
cutCloser: closingMarkdownEmphasisDelimiter to: aLength

	closingMarkdownEmphasisDelimiter length > aLength 
		ifTrue: [^ self tokens 
			add: (closingMarkdownEmphasisDelimiter cutFromStart: aLength) asStringToken 
			before: closingMarkdownEmphasisDelimiter]
		ifFalse: [^ self tokens 
			at: (self tokens indexOf: closingMarkdownEmphasisDelimiter) 
			put: closingMarkdownEmphasisDelimiter asStringToken]
