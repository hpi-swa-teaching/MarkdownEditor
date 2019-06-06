tests
testConvertingToTextUsesInlineParser

	| markdownString mockInlineParser heading result |
	markdownString := '# **Stronger** heading with *emphasis*'.
	mockInlineParser := MarkdownMockInlineParser new.
	heading := MarkdownHeading newFrom: markdownString.
	heading inlineParser: mockInlineParser.
	result := heading asText.
	self
		assert: mockInlineParser parsingResult equals: result;
		assert: markdownString equals: mockInlineParser memorizedParsingRequest string