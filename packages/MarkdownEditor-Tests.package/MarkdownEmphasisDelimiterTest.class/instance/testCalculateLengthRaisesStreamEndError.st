tests - matching
testCalculateLengthRaisesStreamEndError

	self should: [MarkdownEmphasisDelimiter new 
			calculateLengthFor: (self readStreamOn: '')] 
		raise: Error description: 'Stream end reached'