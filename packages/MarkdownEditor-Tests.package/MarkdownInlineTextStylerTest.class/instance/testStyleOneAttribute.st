tests - parsing
testStyleOneAttribute
	
	| text |
	text := '*MiniMetro*' asText.
	inlineTextStyler privateStyle: text.
	self
		assertRuns: {11}
		values: {{TextEmphasis italic}}
		areStyleOf: text