tests - interpretation
testInterpretTokensCutsBoldDelimiters

	inlineTextStyler 
		tokenize: '***f**';
		interpretTokens.
	
	self assert: 4 equals: inlineTextStyler tokens size.
	
	self 
		assert: {MarkdownBold from: 2 to: 6}
		areInlineElementsIn: inlineTextStyler inlineElements