tests - interpretation
testInterpretTokensCutsItalicDelimiters

	inlineTextStyler 
		tokenize: '**f*';
		interpretTokens.
	
	self assert: 4 equals: inlineTextStyler tokens size.
	
	self 
		assert: {MarkdownItalic from: 2 to: 4}
		areInlineElementsIn: inlineTextStyler inlineElements