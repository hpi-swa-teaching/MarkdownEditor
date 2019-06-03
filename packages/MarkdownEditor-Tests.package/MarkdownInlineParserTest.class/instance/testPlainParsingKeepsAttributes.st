tests - parsing
testPlainParsingKeepsAttributes

	| text parsedText |
	text := Text string: 'I have attributes from my caller' attribute: TextEmphasis underlined.
	parsedText := inlineParser parse: text.
	self assert: parsedText hasRuns: {32} values: {{TextEmphasis underlined}}