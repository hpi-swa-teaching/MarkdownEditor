tests - tokenization
testNextTokenStreamEndError
	
	| stream |
	stream := self readStreamOn: ''.
	self should: [inlineTextStyler nextTokenIn: stream] raise: Error description: 'Stream end reached'.
	
	stream := self readStreamOn: 'Trains' at: 6.
	self should: [inlineTextStyler nextTokenIn: stream] raise: Error description: 'Stream end reached'
	