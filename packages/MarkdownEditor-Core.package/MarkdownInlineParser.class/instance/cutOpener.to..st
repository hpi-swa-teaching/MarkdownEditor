parsing
cutOpener: openingMarkdownEmphasisDelimiter to: aLength

	openingMarkdownEmphasisDelimiter length > aLength 
		ifTrue: [^ self tokens 
			add: (openingMarkdownEmphasisDelimiter cutFromEnd: aLength) asStringToken 
			after: openingMarkdownEmphasisDelimiter]
		ifFalse: [^ self tokens 
			at: (self tokens indexOf: openingMarkdownEmphasisDelimiter) 
			put: openingMarkdownEmphasisDelimiter asStringToken]