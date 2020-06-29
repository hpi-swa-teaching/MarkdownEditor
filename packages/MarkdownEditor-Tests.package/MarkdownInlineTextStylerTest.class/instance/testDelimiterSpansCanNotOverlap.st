tests - interpretation
testDelimiterSpansCanNotOverlap

	inlineTextStyler 
		parse: '**f*o** o*'.

	self
		assert: {MarkdownBold from: 1 to: 7}
		areInlineElementsIn: inlineTextStyler inlineElements