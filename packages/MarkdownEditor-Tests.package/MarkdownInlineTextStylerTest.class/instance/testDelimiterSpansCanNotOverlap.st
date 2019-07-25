tests - interpretation
testDelimiterSpansCanNotOverlap

	inlineTextStyler 
		parse: '**f*o** o*'.

	self
		assert: {MarkdownEmphasis strongFrom: 1 to: 7}
		areEmphasesIn: inlineTextStyler emphases