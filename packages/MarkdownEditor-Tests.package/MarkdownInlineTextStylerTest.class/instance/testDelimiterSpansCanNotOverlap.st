tests - interpretation
testDelimiterSpansCanNotOverlap

	| attributes |
	attributes := inlineTextStyler 
		parse: '**f*o** o*'.
	
	self assert: 1 equals: attributes size.
	self assert: MarkdownAttribute bold textAttribute equals: attributes first textAttribute