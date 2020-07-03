tests - interpretation
testProcessingTwoDelimitersCreatesBoldEmphasis

	inlineTextStyler
		tokenize: '**a**';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	self 
		assert: {MarkdownBold from: 1 to: 5}
		areInlineElementsIn: inlineTextStyler inlineElements