tests - cleaning
testIsReusable

	| textOfFirstRun textOfSecondRun |
	textOfFirstRun := '**HPI MiniMetro**' asText.
	textOfSecondRun := '*HPI MiniMetro*' asText.
	self
		assertRuns: {17}
		values: {{TextEmphasis bold}}
		areStyleOf: textOfFirstRun.
	self
		assertRuns: {15}
		values: {{TextEmphasis italic}}
		areStyleOf: textOfSecondRun