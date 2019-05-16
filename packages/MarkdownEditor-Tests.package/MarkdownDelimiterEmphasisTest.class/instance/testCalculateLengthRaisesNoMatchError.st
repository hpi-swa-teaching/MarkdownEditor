tests - matching
testCalculateLengthRaisesNoMatchError

	self should: [MarkdownDelimiterEmphasis new 
			calculateLengthFor: (self readStreamOn: 'Tshuuu tshuuu')] 
		raise: Error description: 'No Match'
	