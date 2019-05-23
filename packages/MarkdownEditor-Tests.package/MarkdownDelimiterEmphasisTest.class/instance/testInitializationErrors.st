tests - state
testInitializationErrors

	self should: [MarkdownEmphasisDelimiter newFor: (self readStreamOn: 'a*')] 
		raise: Error description: 'No Match'.
		
	self should: [MarkdownEmphasisDelimiter newFor: (self readStreamOn: '')] 
		raise: Error description: 'Stream end reached'
	