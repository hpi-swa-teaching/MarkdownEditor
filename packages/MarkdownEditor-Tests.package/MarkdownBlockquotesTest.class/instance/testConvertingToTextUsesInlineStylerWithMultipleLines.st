tests
testConvertingToTextUsesInlineStylerWithMultipleLines

	| line line2 mockTextStyler blockquote |
	line := (MarkdownLine newFrom: '> Quote' with: MarkdownStyleSettings default).
	line2 := (MarkdownLine newFrom: '> Quote 2nd lint' with: MarkdownStyleSettings default).
	mockTextStyler := MarkdownMockTextStyler new.
	blockquote := MarkdownBlockquote newFrom: line.
	blockquote styler: mockTextStyler.
	blockquote append: line2.

	blockquote asText.
	self assert: line asString, line2 asString equals: mockTextStyler memorizedStylingRequest string