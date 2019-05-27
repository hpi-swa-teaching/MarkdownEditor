tests - parsing
testParseOneAttribute
	
	| parsedText |
	parsedText := inlineParser parse: '*MiniMetro*'.
	self assert: parsedText hasRuns: {11} values: {{TextEmphasis italic}}
	