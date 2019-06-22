tests - parsing
testPlainStylingKeepsAttributes

	| text |
	text := Text string: 'I have attributes from my caller' attribute: TextEmphasis underlined.
	inlineTextStyler privateStyle: text.
	self 
		assertRuns: {32} 
		values: {{TextEmphasis underlined}}
		areStyleOf: text