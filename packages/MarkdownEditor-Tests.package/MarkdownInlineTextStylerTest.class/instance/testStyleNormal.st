tests - parsing
testStyleNormal
	
	| text |
	text :=  'MiniMetro' asText.
	inlineTextStyler privateStyle: text.
	self
		assertRuns: {9}
		values: {{}}
		areStyleOf: text