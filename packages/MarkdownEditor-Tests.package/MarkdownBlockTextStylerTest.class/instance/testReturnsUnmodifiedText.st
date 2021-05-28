tests - text
testReturnsUnmodifiedText

	| text expectedColor |
	text := 'No Markdown used here' asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {21}
		values: {{TextColor color: expectedColor. self fontSized: 14}}
		areStyleOf: text