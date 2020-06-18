tests - text
testReturnsUnmodifiedText

	| text |
	text := 'No Markdown used here' asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {21}
		values: {{TextColor color: Color black. self fontSized: 14}}
		areStyleOf: text