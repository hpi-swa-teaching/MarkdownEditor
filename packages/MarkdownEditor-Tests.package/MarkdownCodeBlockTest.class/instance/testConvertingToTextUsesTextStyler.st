tests
testConvertingToTextUsesTextStyler

	| mockTextStyler codeBlock |
	mockTextStyler := MarkdownMockTextStyler new.
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr with: MarkdownStyleSettings default).
	codeBlock
		append: (MarkdownLine newFrom: 'Code', Character cr with: MarkdownStyleSettings default);
		append: (MarkdownLine newFrom: '```' with: MarkdownStyleSettings default);
		styler: mockTextStyler.

	codeBlock asText.
	self assert: 'Code', Character cr equals: mockTextStyler memorizedStylingRequest string
