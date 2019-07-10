tests - text
testEmptyHeading

	| text |
	text := '#' asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {1}
		values: {{self headingFontSized: 34}}
		areStyleOf: text