tests - parsing
testParseOneAttribute

	self
		assertRuns: {11}
		values: {{TextEmphasis italic}}
		areStyleOf: '*MiniMetro*' asText