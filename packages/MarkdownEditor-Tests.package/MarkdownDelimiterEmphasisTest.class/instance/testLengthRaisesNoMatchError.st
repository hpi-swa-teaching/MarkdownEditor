tests
testLengthRaisesNoMatchError

	| specialStream |
	self should: [MarkdownDelimiterEmphasis new calculateLengthFor: (MarkdownReadStream on: 'Tshuuu tshuuu')] raise: Error description: 'No Match'. 
	specialStream := MarkdownReadStream on: 'Trains***'.
	specialStream next: 3.
	self should: [MarkdownDelimiterEmphasis new calculateLengthFor: specialStream] raise: Error description: 'No Match'. 
	