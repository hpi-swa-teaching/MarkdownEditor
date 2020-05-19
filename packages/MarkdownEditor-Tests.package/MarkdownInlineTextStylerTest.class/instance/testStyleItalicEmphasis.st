tests - styling
testStyleItalicEmphasis
	
	| text |
	text := '*MiniMetro*' asText.
	inlineTextStyler privateStyle: text.
	self
		assertRuns: {11}
		values: {{TextEmphasis italic . TextColor black}}
		areStyleOf: text