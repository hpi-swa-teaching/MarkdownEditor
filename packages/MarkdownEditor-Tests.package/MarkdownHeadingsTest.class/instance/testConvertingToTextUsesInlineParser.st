tests
testConvertingToTextUsesInlineParser

	| markdownString mockInlineStyler heading result |
	markdownString := '# **Stronger** heading with *emphasis*'.
	mockInlineStyler := MarkdownMockTextStyler new.
	heading := MarkdownHeading newFrom: markdownString.
	heading styler: mockInlineStyler.
	result := heading asText.
	self
		assert: mockInlineStyler stylingResult equals: result;
		assert: markdownString equals: mockInlineStyler memorizedStylingRequest string