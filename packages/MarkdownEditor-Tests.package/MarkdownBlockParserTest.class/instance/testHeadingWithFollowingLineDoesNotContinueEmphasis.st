tests - text with inline
testHeadingWithFollowingLineDoesNotContinueEmphasis

	self
		assert: '# Title **not
bold**'
		parsesToRuns: {14. 6}
		values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}. {}}