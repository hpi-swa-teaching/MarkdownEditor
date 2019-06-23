tests - text
testHeadingWithFollowingLine

	self
		assertRuns: {8. 4}
		values: {{self headingFontSized: 34}. {}}
		areStyledResultOf: '# Title', Character cr, 'line'