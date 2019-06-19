tests
testConvertingToTextUsesInlineParser

	| markdownString mockTextStyler paragraph |
	markdownString := 'We may include', Character cr, '*emphasis* or', Character cr, '**strong emphasis** in paragraphs'.
	mockTextStyler := MarkdownMockTextStyler new.
	paragraph := MarkdownParagraph newFrom: markdownString.
	paragraph styler: mockTextStyler.

	paragraph asText.
	self assert: markdownString equals: mockTextStyler memorizedStylingRequest string