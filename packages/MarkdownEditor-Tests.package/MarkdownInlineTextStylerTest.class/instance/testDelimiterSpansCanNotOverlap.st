tests - interpretation
testDelimiterSpansCanNotOverlap

	| attributes |
	attributes := inlineParser 
		parse: '**f*o** o*'.
	
	self assert: 1 equals: attributes size.
	self assert: (attributes first isKindOf: MarkdownAttributeBold)