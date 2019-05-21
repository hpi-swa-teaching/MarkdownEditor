tests - parsing
testParseNormal
	
	| parsedText |
	parsedText := inlineParser parse: 'MiniMetro'.
	self assert: parsedText hasRuns: {9} values: {{}} 
	