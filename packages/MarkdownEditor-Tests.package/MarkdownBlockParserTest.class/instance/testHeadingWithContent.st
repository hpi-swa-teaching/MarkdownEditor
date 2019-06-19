tests - text
testHeadingWithContent

	self
		assert: '# Title'
		parsesToRuns: {7}
		values: {{self headingFontSized: 34}}
