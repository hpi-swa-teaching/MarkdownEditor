tests - state
testPosition

	| token |
	token := MarkdownDelimiterEmphasis newFor: (self readStreamOn: 'Mind the **gap between platform and train**.' at: 9).
	self assert: 10 equals: token startPosition