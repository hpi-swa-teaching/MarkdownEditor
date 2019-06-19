tests
testConvertingToTextUsesInlineParser

	| markdownString mockTextStyler heading |
	markdownString := '# **Stronger** heading with *emphasis*'.
	mockTextStyler := MarkdownMockTextStyler new.
	heading := MarkdownHeading newFrom: markdownString.
	heading styler: mockTextStyler.

	heading asText.
	self assert: markdownString equals: mockTextStyler memorizedStylingRequest string