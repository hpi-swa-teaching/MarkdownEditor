tests - text
testHeadingWithFollowingLine

	| text expectedColor |
	text := ('# Title', Character cr, 'line') asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {8. 4}
		values: {{TextColor color: expectedColor. self fontSized: 34}. {TextColor color: expectedColor. self fontSized: 14}}
		areStyleOf: text