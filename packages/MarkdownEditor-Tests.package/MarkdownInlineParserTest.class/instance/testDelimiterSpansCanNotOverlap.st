tests - interpretation
testDelimiterSpansCanNotOverlap

	inlineParser text: '**f*o** o*' asText.
	inlineParser tokenize.
	inlineParser interpretTokens.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold)