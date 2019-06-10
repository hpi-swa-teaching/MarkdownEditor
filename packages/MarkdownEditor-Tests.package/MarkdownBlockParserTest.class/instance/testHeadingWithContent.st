tests - text
testHeadingWithContent

	self
		assert: '# Title'
		parsesToRuns: {7}
		values: {{TextFontReference toFont: (self headingFontSized: 34)}}
