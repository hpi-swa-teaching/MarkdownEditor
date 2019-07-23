tests
testConvertingToTextUsesTextStyler

	| mockTextStyler codeBlock |
	mockTextStyler := MarkdownMockTextStyler new.
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr);
		append: (MarkdownLine newFrom: '```');
		styler: mockTextStyler.

	codeBlock asText.
	self assert: 'Code', Character cr equals: mockTextStyler memorizedStylingRequest string
