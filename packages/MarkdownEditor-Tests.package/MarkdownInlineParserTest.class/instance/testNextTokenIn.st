tests
testNextTokenIn
	
	| stream token |
	stream := MarkdownReadStream on: 'Change **at the next stop** please!'.
	token := inlineParser nextTokenIn: stream.
	self assert: (token isKindOf: MarkdownString).
	self assert: 'C' equals: token content.
	self deny: token isDelimiter.
	
	stream next: 7.
	token := inlineParser nextTokenIn: stream.
	self assert: (token isKindOf: MarkdownDelimiterEmphasis).
	self assert:  '**' equals: token content.
	self assert: token isDelimiter.
	
	stream := MarkdownReadStream on: ''.
	self should: [inlineParser nextTokenIn: stream] raise: Error description: 'Stream end reached'.
	
	stream := MarkdownReadStream on: 'Trains'.
	stream next: 6.
	self should: [inlineParser nextTokenIn: stream] raise: Error description: 'Stream end reached'
	