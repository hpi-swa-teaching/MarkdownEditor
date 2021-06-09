tests - text with inline
testHeadingWithFollowingLineDoesNotContinueEmphasis

	| text expectedColor |
	text := ('# Title **not', Character cr, 'bold**') asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {14. 6}
		values: {{TextColor color: expectedColor. self fontSized: 34}. {TextColor color: expectedColor. self fontSized: 14}}
		areStyleOf: text