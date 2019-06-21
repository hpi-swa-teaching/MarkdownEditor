tests - parsing
testPlainParsingKeepsAttributes

	| text |
	text := Text string: 'I have attributes from my caller' attribute: TextEmphasis underlined.
	self 
		assertRuns: {32} 
		values: {{TextEmphasis underlined}}
		areStyleOf: text