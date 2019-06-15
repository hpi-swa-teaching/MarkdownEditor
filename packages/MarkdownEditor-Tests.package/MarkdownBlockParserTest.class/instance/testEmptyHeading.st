tests - text
testEmptyHeading

	self
		assert: '#'
		parsesToRuns: {1}
		values: {{self headingFontSized: 34}}
