tests - text
testEmptyHeadingWithFollowingLine

	| text expectedColor |
	text := ('#', Character cr) asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {2}
		values: {{TextColor color: expectedColor. self fontSized: 34}}
		areStyleOf: text