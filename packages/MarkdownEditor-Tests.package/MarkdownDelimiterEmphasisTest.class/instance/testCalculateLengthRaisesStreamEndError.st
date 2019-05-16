tests - matching
testCalculateLengthRaisesStreamEndError

	self should: [MarkdownDelimiterEmphasis new calculateLengthFor: (self readStreamOn: '')] 
		raise: Error description: 'Stream end reached'