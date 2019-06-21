tests - parsing
testParseTwoAttributes

	self
		assertRuns: {1. 8. 6} 
		values: {{TextEmphasis italic}. {TextEmphasis italic. TextEmphasis bold}. {TextEmphasis italic}}
		areStyleOf: '***Mini**Metro*' asText