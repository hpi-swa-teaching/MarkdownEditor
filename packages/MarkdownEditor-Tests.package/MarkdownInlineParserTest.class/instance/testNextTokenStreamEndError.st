tests
testNextTokenStreamEndError
	
	| stream |

	stream := self readStreamOn: ''.
	self should: [inlineParser nextTokenIn: stream] raise: Error description: 'Stream end reached'.
	
	stream := self readStreamOn: 'Trains' at: 6.
	self should: [inlineParser nextTokenIn: stream] raise: Error description: 'Stream end reached'
	