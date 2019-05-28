tests
testAsTextStylesInline

	| markdownString inlineParserMock heading result |
	markdownString := '# **Stronger** heading with *emphasis*'.
	inlineParserMock := MarkdownInlineParserMock new.
	heading := MarkdownHeading newFrom: markdownString.
	heading inlineParser: inlineParserMock.
	result := heading asText.
	self
		assert: inlineParserMock identical: result;
		assert: markdownString equals: result text string