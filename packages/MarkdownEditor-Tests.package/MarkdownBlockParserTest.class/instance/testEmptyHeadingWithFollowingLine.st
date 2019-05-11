tests
testEmptyHeadingWithFollowingLine
	
	| string |
	string := '#
'.
	self assert: string parsesToRuns: {2} values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}}