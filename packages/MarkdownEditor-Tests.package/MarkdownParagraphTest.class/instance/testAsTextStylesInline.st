tests
testAsTextStylesInline

	| markdownString inlineParserMock paragraph result |
	markdownString := 'We may include
*emphasis* or
**strong emphasis** in paragraphs'.
	inlineParserMock := MarkdownInlineParserMock new.
	paragraph := MarkdownParagraph newFrom: markdownString.
	paragraph inlineParser: inlineParserMock.
	result := paragraph asText.
	self
		assert: inlineParserMock identical: result;
		assert: markdownString equals: result text string