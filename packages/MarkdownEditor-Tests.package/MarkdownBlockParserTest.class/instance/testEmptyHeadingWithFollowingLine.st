tests - text
testEmptyHeadingWithFollowingLine

	self
		assert: '#', Character cr
		parsesToRuns: {2}
		values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}}