tests - parsing
testParseTwoAttributes
	
	| attributes |
	attributes := inlineParser parse: '***Mini**Metro*'.
	self assert: 2 equals: attributes size.
	self assert: (attributes first isKindOf: MarkdownAttributeBold).
	self assert: (attributes second isKindOf: MarkdownAttributeItalic)
	