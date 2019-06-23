tests - parsing
testStyleTwoAttributes

	| text |
	text := '***Mini**Metro*' asText.
	inlineTextStyler privateStyle: text.
	self
		assertRuns: {1. 8. 6} 
		values: {{TextEmphasis italic}. {TextEmphasis italic. TextEmphasis bold}. {TextEmphasis italic}}
		areStyleOf: text