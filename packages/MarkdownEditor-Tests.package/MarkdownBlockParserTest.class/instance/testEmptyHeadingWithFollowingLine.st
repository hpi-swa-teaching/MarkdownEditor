tests - text
testEmptyHeadingWithFollowingLine

	self
		assert: '#', Character cr
		parsesToRuns: {2}
		values: {{self headingFontSized: 34}}