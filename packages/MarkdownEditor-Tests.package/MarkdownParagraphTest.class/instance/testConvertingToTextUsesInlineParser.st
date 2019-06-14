tests
testConvertingToTextUsesInlineParser

	| markdownString mockInlineStyler paragraph result |
	markdownString := 'We may include', Character cr, '*emphasis* or', Character cr, '**strong emphasis** in paragraphs'.
	mockInlineStyler := MarkdownMockTextStyler new.
	paragraph := MarkdownParagraph newFrom: markdownString.
	paragraph styler: mockInlineStyler.
	result := paragraph asText.
	self
		assert: mockInlineStyler stylingResult equals: result;
		assert: markdownString equals: mockInlineStyler memorizedStylingRequest string