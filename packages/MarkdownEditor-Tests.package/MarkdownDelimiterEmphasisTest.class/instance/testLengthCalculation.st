tests
testLengthCalculation

	| specialStream |
	self assert: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '*')) equals: 1.
	self assert: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '**')) equals: 2.
	self assert: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '********')) equals: 8.
	self assert: (MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: '**MINIMETRO')) equals: 2.
	specialStream := MarkdownReadStream on: 'Trains***'.
	specialStream next: 6.
	self assert: (MarkdownDelimiterEmphasis new calculateLengthFor: specialStream) equals: 3
	