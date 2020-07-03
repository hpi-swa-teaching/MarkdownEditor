tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	inlineTextStyler 
		tokenize: '*a**b***';
		interpretTokens.
		
	self assert: 6 equals: inlineTextStyler tokens size.
	
	self 
		assert: {MarkdownItalic from: 1 to: 8. MarkdownBold from: 3 to: 7}
		areInlineElementsIn: inlineTextStyler inlineElements