tests
testConvertingToTextUsesTextStyler

	| markdownString mockTextStyler codeBlock result |
	markdownString := '```', Character cr, 'Code', Character cr, '```'.
	mockTextStyler := MarkdownMockTextStyler new.
	codeBlock := MarkdownCodeBlock newFrom: markdownString.
	codeBlock styler: mockTextStyler.
	result := codeBlock asText.
	self
		assert: '```', Character cr, mockTextStyler stylingResult, '```' equals: result string;
		assert: 'Code', Character cr equals: mockTextStyler memorizedStylingRequest string