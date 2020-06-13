tests
testConvertingToTextUsesInlineStyler

	| line mockTextStyler heading |
	line := (MarkdownLine newFrom: '# **Stronger** heading with *emphasis*' with: MarkdownStyleSettings default).
	mockTextStyler := MarkdownMockTextStyler new.
	heading := MarkdownHeading newFrom: line.
	heading styler: mockTextStyler.

	heading asText.
	self assert: line asString equals: mockTextStyler memorizedStylingRequest string