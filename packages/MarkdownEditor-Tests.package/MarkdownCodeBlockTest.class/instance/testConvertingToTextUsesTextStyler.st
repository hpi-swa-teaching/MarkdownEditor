tests
testConvertingToTextUsesTextStyler

	| markdownString mockTextStyler codeBlock |
	markdownString := '```', Character cr, 'Code', Character cr, '```'.
	mockTextStyler := MarkdownMockTextStyler new.
	codeBlock := MarkdownCodeBlock newFrom: markdownString.
	codeBlock styler: mockTextStyler.

	codeBlock asText.
	self assert: 'Code', Character cr equals: mockTextStyler memorizedStylingRequest string
