tests - matching
testItalicAttributeDelimiterLength

	| opener closer |
	closer := MarkdownDelimiterEmphasis new
					content: '*'.
	opener := MarkdownDelimiterEmphasis new
					content: '*'.
	
	self assert: 1 equals: (closer attributeDelimiterLengthWith: opener)
	