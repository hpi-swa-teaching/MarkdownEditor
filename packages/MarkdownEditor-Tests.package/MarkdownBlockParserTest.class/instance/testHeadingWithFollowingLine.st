tests - text
testHeadingWithFollowingLine

	self
		assert: '# Title', Character cr, 'line'
		parsesToRuns: {8. 4}
		values: {{self headingFontSized: 34}. {}}