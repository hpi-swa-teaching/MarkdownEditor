tests - cleaning
testIsReusable

	| styledResult |
	styledResult := inlineParser styledTextFor: '**HPI MiniMetro**' asText.
	self assert: styledResult  hasRuns: {17} values: {{TextEmphasis bold}}.
	
	styledResult := inlineParser styledTextFor: '*HPI MiniMetro*' asText.
	self assert: styledResult  hasRuns: {15} values: {{TextEmphasis italic}}