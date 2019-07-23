tests - text
testHeadingWithFollowingLine

	| text |
	text := ('# Title', Character cr, 'line') asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {8. 4}
		values: {{self headingFontSized: 34}. {}}
		areStyleOf: text