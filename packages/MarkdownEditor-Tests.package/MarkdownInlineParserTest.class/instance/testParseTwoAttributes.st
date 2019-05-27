tests - parsing
testParseTwoAttributes
	
	| parsedText |
	parsedText := inlineParser parse: '***Mini**Metro*'.
	self assert: parsedText 
		hasRuns: {1. 8. 6} 
		values: {{TextEmphasis italic}. {TextEmphasis italic. TextEmphasis bold}. {TextEmphasis italic}}
	