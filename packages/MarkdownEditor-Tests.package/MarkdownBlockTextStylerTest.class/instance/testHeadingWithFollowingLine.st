tests - text
testHeadingWithFollowingLine

	| text |
	text := ('# Title', Character cr, 'line') asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {8. 4}
		values: {{TextColor color: Color black. self fontSized: 34}. {TextColor color: Color black. self fontSized: 14}}
		areStyleOf: text