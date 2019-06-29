tests - text with inline
testHeadingWithFollowingLineDoesNotContinueEmphasis

	self
		assertRuns: {14. 6}
		values: {{self headingFontSized: 34}. {}}
		areStyledResultOf: '# Title **not', Character cr, 'bold**'