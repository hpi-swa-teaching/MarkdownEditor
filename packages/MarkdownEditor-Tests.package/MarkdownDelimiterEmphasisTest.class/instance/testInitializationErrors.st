tests - state
testInitializationErrors

	self should: [MarkdownDelimiterEmphasis newFor: (self readStreamOn: 'a*')] 
		raise: Error description: 'No Match'.
		
	self should: [MarkdownDelimiterEmphasis newFor: (self readStreamOn: '')] 
		raise: Error description: 'Stream end reached'
	