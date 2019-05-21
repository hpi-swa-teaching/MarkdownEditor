tests - matching
testBoldAttributeDelimiterLength

	| opener closer |
	closer := MarkdownDelimiterEmphasis new
					content: '**'.
	opener := MarkdownDelimiterEmphasis new
					content: '**'.
	
	self assert: 2 equals: (closer attributeDelimiterLengthWith: opener)
	