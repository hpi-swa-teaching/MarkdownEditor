tests
testNextTokenIn
	
	| stream token |
	stream := self readStreamOn: 'Change **at the next stop** please!'.
	token := inlineParser nextTokenIn: stream.
	self assert: (token isKindOf: MarkdownString).
	self assert: 'C' equals: token content.
	self deny: token isDelimiter.
	
	stream next: 7.
	token := inlineParser nextTokenIn: stream.
	self assert: (token isKindOf: MarkdownDelimiterEmphasis).
	self assert:  '**' equals: token content.
	self assert: token isDelimiter
	