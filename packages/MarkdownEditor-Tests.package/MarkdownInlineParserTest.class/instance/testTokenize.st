tests - tokenization
testTokenize

	inlineParser tokenize: '**Foo*'.
	self assert: 5 equals: inlineParser tokens size.
	
	self assert: '**' equals: inlineParser tokens first content.
	self assert: inlineParser tokens first isDelimiter.
	
	self assert: 'F' equals: inlineParser tokens second content.
	self deny: inlineParser tokens second isDelimiter.
	
	self assert: '*' equals: inlineParser tokens last content.
	self assert: inlineParser tokens last isDelimiter