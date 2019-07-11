tests - text with inline
testHeadingWithFollowingLineDoesNotContinueEmphasis

	| text |
	text := ('# Title **not', Character cr, 'bold**') asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {14. 6}
		values: {{self headingFontSized: 34}. {}}
		areStyleOf: text