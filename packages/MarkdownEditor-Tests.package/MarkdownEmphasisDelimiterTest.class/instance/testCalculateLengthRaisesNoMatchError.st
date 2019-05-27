tests - matching
testCalculateLengthRaisesNoMatchError

	self should: [MarkdownEmphasisDelimiter new 
			calculateLengthFor: (self readStreamOn: 'Tshuuu tshuuu')] 
		raise: Error description: 'No Match'
	