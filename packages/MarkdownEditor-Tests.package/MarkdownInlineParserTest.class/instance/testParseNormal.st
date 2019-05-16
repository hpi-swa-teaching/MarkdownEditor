tests - parsing
testParseNormal
	
	| attributes |
	attributes := inlineParser parse: 'MiniMetro'.
	self assert: 0 equals: attributes size 
	