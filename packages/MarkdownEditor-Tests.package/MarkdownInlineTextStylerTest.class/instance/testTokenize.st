tests - tokenization
testTokenize

	inlineTextStyler tokenize: '**MiniMetro*'.

	self assert: 3 equals: inlineTextStyler tokens size.

	self assert: '**' equals: inlineTextStyler tokens first content.
	self assert: inlineTextStyler tokens first isDelimiter.
	
	self assert: 'MiniMetro' equals: inlineTextStyler tokens second content.
	self deny: inlineTextStyler tokens second isDelimiter.
	
	self assert: '*' equals: inlineTextStyler tokens third content.
	self assert: inlineTextStyler tokens third isDelimiter