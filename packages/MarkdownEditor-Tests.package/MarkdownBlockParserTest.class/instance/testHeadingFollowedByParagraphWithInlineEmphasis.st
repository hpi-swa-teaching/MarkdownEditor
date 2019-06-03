tests - text with inline
testHeadingFollowedByParagraphWithInlineEmphasis

	self
		assert: '# Title **bold**', Character cr, 'Line *italic*'
		parsesToRuns: {8. 8. 1. 5. 8}
		values: {{TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}. {TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined. TextEmphasis bold.}. {TextFontReference toFont: (TextStyle default copy fontOfSize: 26). TextEmphasis underlined}. {}. {TextEmphasis italic}}