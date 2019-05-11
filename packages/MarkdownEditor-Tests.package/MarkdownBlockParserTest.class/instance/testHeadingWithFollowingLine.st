tests
testHeadingWithFollowingLine
	
	| string |
	string := '# Title
line'.
	self assert: string parsesToRuns: {8. 4} values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}. {}}