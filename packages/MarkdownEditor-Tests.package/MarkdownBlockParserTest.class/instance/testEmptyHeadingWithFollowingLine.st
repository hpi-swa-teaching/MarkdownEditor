tests - text
testEmptyHeadingWithFollowingLine

	self
		assert: '#', Character cr
		parsesToRuns: {2}
		values: {{TextFontReference toFont: (self headingFontSized: 34)}}