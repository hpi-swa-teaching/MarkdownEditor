tests - text
testEmptyHeading

	self
		assertRuns: {1}
		values: {{self headingFontSized: 34}}
		areStyledResultOf: '#'