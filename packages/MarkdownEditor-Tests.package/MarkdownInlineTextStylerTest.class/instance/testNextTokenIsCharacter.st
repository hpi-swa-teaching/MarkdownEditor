tests - tokenization
testNextTokenIsCharacter
	
	| stream token |
	stream := self readStreamOn: 'Change **at the next stop** please!'.
	token := inlineParser nextTokenIn: stream.
	self assert: (token isKindOf: MarkdownString).
	self assert: 'C' equals: token content.
	self deny: token isDelimiter