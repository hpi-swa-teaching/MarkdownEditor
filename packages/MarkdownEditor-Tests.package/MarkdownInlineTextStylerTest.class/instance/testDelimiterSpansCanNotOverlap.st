tests - interpretation
testDelimiterSpansCanNotOverlap

	| attributes |
	attributes := inlineTextStyler 
		parse: '**f*o** o*'.
	
	self assert: 1 equals: attributes size.
	self assert: TextEmphasis bold equals: attributes first textAttribute