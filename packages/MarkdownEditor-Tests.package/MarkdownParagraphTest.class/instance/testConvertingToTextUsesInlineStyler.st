tests
testConvertingToTextUsesInlineStyler

	| line mockTextStyler paragraph |
	line := MarkdownLine newFrom: 'Paragraph with **emphasis**', Character cr with: MarkdownStyleSettings default.
	mockTextStyler := MarkdownMockTextStyler new.
	paragraph := MarkdownParagraph newFrom: line.
	paragraph styler: mockTextStyler.

	paragraph asText.
	self assert: line asString equals: mockTextStyler memorizedStylingRequest string