tests
testConvertingToTextUsesTextStyler

	| markdownString mockTextStyler codeBlock result |
	markdownString := '```', Character cr, 'Code is run through a TextStyler', Character cr, '```'.
	mockTextStyler := MarkdownMockTextStyler new.
	codeBlock := MarkdownCodeBlock newFrom: markdownString.
	codeBlock smalltalkStyler: mockTextStyler.
	result := codeBlock asText.
	self
		assert: mockTextStyler stylingResult equals: result;
		assert: 'Code is run through a TextStyler', Character cr equals: mockTextStyler memorizedStylingRequest string