tests - interpretation
testProcessingTwoDelimitersCreatesItalicEmphasis

	inlineTextStyler
		tokenize: '*a*';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	self 
		assert: {MarkdownItalic from: 1 to: 3}
		areInlineElementsIn: inlineTextStyler inlineElements