parsing
cutCloser: closingMarkdownDelimiterEmphasis to: aLength

	closingMarkdownDelimiterEmphasis length > aLength 
		ifTrue: [^ self tokens 
			add: (closingMarkdownDelimiterEmphasis cutFromStart: aLength) asStringToken 
			before: closingMarkdownDelimiterEmphasis]
		ifFalse: [^ self tokens 
			at: (self tokens indexOf: closingMarkdownDelimiterEmphasis) 
			put: closingMarkdownDelimiterEmphasis asStringToken]
