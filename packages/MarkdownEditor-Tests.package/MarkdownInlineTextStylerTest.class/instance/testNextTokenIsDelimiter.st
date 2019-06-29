tests - tokenization
testNextTokenIsDelimiter

	| stream token |
	stream := self readStreamOn: 'Change **at the next stop** please!'.
	stream next: 7.
	token := inlineTextStyler nextTokenIn: stream.
	self assert: (token isKindOf: MarkdownEmphasisDelimiter).
	self assert: '**' equals: token content.
	self assert: token isDelimiter