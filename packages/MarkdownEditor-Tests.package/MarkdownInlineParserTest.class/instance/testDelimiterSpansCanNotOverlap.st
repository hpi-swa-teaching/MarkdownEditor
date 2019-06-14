tests - interpretation
testDelimiterSpansCanNotOverlap

	inlineParser 
		textToParse: '**f*o** o*' asText;
		tokenize;
		interpretTokens.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold)