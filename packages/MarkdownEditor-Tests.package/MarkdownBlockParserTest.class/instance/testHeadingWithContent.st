tests - text
testHeadingWithContent

	self
		assert: '# Title'
		parsesToRuns: {7}
		values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}}
