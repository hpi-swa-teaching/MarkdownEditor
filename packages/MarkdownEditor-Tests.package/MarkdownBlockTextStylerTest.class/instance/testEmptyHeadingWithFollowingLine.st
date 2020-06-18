tests - text
testEmptyHeadingWithFollowingLine

	| text |
	text := ('#', Character cr) asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {2}
		values: {{TextColor color: Color black. self fontSized: 34}}
		areStyleOf: text