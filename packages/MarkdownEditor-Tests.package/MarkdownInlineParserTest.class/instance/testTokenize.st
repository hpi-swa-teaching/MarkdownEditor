tests
testTokenize

	inlineParser tokenize: 'Mini**Metro** *is cool*'.
	self assert: inlineParser tokens size equals: 21.
	self assert: inlineParser tokens first content equals: 'M'.
	self deny: inlineParser tokens first isDelimiter.
	self assert: inlineParser tokens second content equals: 'i'.
	self assert: inlineParser tokens last content equals: '*'.
	self assert: inlineParser tokens last isDelimiter