tests - text with inline
testHeadingWithFollowingLineDoesNotContinueEmphasis

	| text |
	text := ('# Title **not', Character cr, 'bold**') asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {14. 6}
		values: {{TextColor color: Color black. self fontSized: 34}. {TextColor color: Color black. self fontSized: 14}}
		areStyleOf: text