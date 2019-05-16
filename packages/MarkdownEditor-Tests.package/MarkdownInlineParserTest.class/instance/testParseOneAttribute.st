tests - parsing
testParseOneAttribute
	
	| attributes |
	attributes := inlineParser parse: '*MiniMetro*'.
	self assert: 1 equals: attributes size.
	self assert: (attributes first isKindOf: MarkdownAttributeItalic)
	