tests
testHeadingWithContent
	
	| string |
	string := '# Title'.
	self assert: string parsesToRuns: {7} values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}}