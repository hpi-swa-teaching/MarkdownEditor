tests - text
testEmptyHeading

	| text |
	text := '#' asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {1}
		values: {{TextColor color: Color black. self fontSized: 34}}
		areStyleOf: text