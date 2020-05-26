tests - interpretation
testProcessingTwoDelimitersCreatesBoldEmphasis

	inlineTextStyler
		tokenize: '**a**';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	self 
		assert: {MarkdownEmphasis strongFrom: 1 to: 5}
		areInlineElementsIn: inlineTextStyler inlineElements