tests
testHeading
	
	| string |
	string := '#'.
	self assert: string parsesToRuns: {1} values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}}