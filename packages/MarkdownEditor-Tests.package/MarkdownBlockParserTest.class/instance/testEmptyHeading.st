tests - text
testEmptyHeading

	self
		assert: '#'
		parsesToRuns: {1}
		values: {{TextFontReference toFont: (self headingFontSized: 34)}}
