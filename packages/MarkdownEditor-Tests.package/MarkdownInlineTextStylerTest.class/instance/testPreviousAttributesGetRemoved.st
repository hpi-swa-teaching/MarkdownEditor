tests - parsing
testPreviousAttributesGetRemoved

	| text |
	text := Text string: 'I have attributes from my caller' attribute: TextEmphasis underlined.
	inlineTextStyler privateStyle: text.
	self 
		assertRuns: {32} 
		values: {{}}
		areStyleOf: text