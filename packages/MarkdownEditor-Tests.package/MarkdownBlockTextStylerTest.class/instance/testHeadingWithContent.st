tests - text
testHeadingWithContent

	| text |
	text := '# Title' asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {7}
		values: {{TextColor color: Color black. self fontSized: 34}}
		areStyleOf: text