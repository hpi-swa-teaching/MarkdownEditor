tests - state
testLengthCalculation

	self assert: 1 equals: (MarkdownEmphasisDelimiter new calculateLengthFor: (self readStreamOn: '*')).
	self assert: 2 equals: (MarkdownEmphasisDelimiter new calculateLengthFor: (self readStreamOn: '**')).
	self assert: 8 equals: (MarkdownEmphasisDelimiter new calculateLengthFor: (self readStreamOn: '********')).
	self assert: 2 equals: (MarkdownEmphasisDelimiter new calculateLengthFor: (self readStreamOn: '**MINIMETRO')).
	self assert: 3 equals: (MarkdownEmphasisDelimiter new calculateLengthFor: (self readStreamOn: 'Trains***' at: 6))