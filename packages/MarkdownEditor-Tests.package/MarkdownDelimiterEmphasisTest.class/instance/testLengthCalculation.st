tests
testLengthCalculation

	| specialStream |
	self assert: 1 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '*')).
	self assert: 2 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '**')).
	self assert: 8 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '********')).
	self assert: 2 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '**MINIMETRO')).
	specialStream := MarkdownReadStream on: 'Trains***'.
	specialStream next: 6.
	self assert: 3 equals: (MarkdownDelimiterEmphasis new calculateLengthFor: specialStream)
	