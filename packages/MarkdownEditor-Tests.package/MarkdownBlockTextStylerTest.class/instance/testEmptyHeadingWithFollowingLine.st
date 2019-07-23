tests - text
testEmptyHeadingWithFollowingLine

	| text |
	text := ('#', Character cr) asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {2}
		values: {{self headingFontSized: 34}}
		areStyleOf: text