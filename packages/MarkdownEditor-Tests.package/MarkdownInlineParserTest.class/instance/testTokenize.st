tests
testTokenize

	inlineParser tokenize: 'Mini**Metro** *is cool*'.
	self assert: 21 equals: inlineParser tokens size.
	self assert: 'M' equals: inlineParser tokens first content.
	self deny: inlineParser tokens first isDelimiter.
	self assert: 'i' equals: inlineParser tokens second content.
	self assert: '*' equals: inlineParser tokens last content.
	self assert: inlineParser tokens last isDelimiter