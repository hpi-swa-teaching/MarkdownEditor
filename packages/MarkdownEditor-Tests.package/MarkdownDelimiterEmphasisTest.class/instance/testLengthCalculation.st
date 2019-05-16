tests - state
testLengthCalculation

	self assert: 1 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (self readStreamOn: '*')).
	self assert: 2 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (self readStreamOn: '**')).
	self assert: 8 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (self readStreamOn: '********')).
	self assert: 2 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (self readStreamOn: '**MINIMETRO')).
	self assert: 3 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (self readStreamOn: 'Trains***' at: 6))