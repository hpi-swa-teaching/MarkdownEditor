tests - text
testEmptyHeading

	| text expectedColor |
	text := '#' asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {1}
		values: {{TextColor color: expectedColor.  self fontSized: 34}}
		areStyleOf: text