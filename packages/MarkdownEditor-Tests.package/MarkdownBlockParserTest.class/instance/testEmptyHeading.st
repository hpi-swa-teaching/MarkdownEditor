tests
testEmptyHeading

	self
		assert: '#'
		parsesToRuns: {1}
		values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}}
