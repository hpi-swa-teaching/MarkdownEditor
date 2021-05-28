tests - text
testHeadingWithContent

	| text expectedColor |
	text := '# Title' asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {7}
		values: {{TextColor color: expectedColor. self fontSized: 34}}
		areStyleOf: text