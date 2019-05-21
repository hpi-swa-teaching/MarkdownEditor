parsing
cutOpener: openingMarkdownDelimiterEmphasis to: aLength

	openingMarkdownDelimiterEmphasis length > aLength 
		ifTrue: [^ self tokens 
			add: (openingMarkdownDelimiterEmphasis cutFromEnd: aLength) asStringToken 
			after: openingMarkdownDelimiterEmphasis]
		ifFalse: [^ self tokens 
			at: (self tokens indexOf: openingMarkdownDelimiterEmphasis) 
			put: openingMarkdownDelimiterEmphasis asStringToken]