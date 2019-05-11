tests
testHeadingWithFollowingLine

	self
		assert: '# Title
line'
		parsesToRuns: {8. 4}
		values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}. {}}
