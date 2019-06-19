tests - cleaning
testIsReusable

	| textOfFirstRun textOfSecondRun |
	textOfFirstRun := '**HPI MiniMetro**' asText.
	textOfSecondRun := '*HPI MiniMetro*' asText.

	inlineParser privateStyle: textOfFirstRun.
	self assert: textOfFirstRun hasRuns: {17} values: {{TextEmphasis bold}}.
	inlineParser privateStyle: textOfSecondRun.
	self assert: textOfSecondRun hasRuns: {15} values: {{TextEmphasis italic}}