tests - text
testHeadingWithContent

	| text |
	text := '# Title' asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {7}
		values: {{self headingFontSized: 34}}
		areStyleOf: text