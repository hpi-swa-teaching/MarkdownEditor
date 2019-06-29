tests - text
testEmptyHeadingWithFollowingLine

	self
		assertRuns: {2}
		values: {{self headingFontSized: 34}}
		areStyledResultOf: '#', Character cr