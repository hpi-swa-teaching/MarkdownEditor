tests - text
testHeadingWithContent

	self
		assertRuns: {7}
		values: {{self headingFontSized: 34}}
		areStyledResultOf: '# Title'