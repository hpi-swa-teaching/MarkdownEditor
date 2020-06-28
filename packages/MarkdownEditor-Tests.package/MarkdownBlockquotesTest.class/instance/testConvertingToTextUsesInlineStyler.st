tests
testConvertingToTextUsesInlineStyler

	| line mockTextStyler blockquote |
	line := (MarkdownLine newFrom: '> Quote' with: MarkdownStyleSettings default).
	mockTextStyler := MarkdownMockTextStyler new.
	blockquote := MarkdownBlockquote newFrom: line.
	blockquote styler: mockTextStyler.

	blockquote asText.
	self assert: line asString equals: mockTextStyler memorizedStylingRequest string.