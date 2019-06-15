tests - text with inline
testHeadingWithFollowingLineDoesNotContinueEmphasis

	self
		assert: '# Title **not', Character cr, 'bold**'
		parsesToRuns: {14. 6}
		values: {{self headingFontSized: 34}. {}}