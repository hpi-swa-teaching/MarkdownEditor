tests - text
testHeadingWithFollowingLine

	self
		assert: '# Title', Character cr, 'line'
		parsesToRuns: {8. 4}
		values: {{TextFontReference toFont: (self headingFontSized: 34)}. {}}