tests - tokenization
testTokenize
	
	inlineTextStyler tokenize: '**Foo*'.

	self assert: 5 equals: inlineTextStyler tokens size.
	
	self assert: '**' equals: inlineTextStyler tokens first content.
	self assert: inlineTextStyler tokens first isDelimiter.
	
	self assert: 'F' equals: inlineTextStyler tokens second content.
	self deny: inlineTextStyler tokens second isDelimiter.
	
	self assert: '*' equals: inlineTextStyler tokens last content.
	self assert: inlineTextStyler tokens last isDelimiter