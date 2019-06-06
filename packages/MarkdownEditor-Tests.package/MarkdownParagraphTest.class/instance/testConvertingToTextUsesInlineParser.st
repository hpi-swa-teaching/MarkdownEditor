tests
testConvertingToTextUsesInlineParser

	| markdownString mockInlineParser paragraph result |
	markdownString := 'We may include', Character cr, '*emphasis* or', Character cr, '**strong emphasis** in paragraphs'.
	mockInlineParser := MarkdownMockInlineParser new.
	paragraph := MarkdownParagraph newFrom: markdownString.
	paragraph inlineParser: mockInlineParser.
	result := paragraph asText.
	self
		assert: mockInlineParser parsingResult equals: result;
		assert: markdownString equals: mockInlineParser memorizedParsingRequest string