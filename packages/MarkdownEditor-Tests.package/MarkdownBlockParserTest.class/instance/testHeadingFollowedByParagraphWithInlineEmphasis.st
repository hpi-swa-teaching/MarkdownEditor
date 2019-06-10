tests - text with inline
testHeadingFollowedByParagraphWithInlineEmphasis

	self
		assert: '# Title **bold**', Character cr, 'Line *italic*'
		parsesToRuns: {8. 8. 1. 5. 8}
		values: {{TextFontReference toFont: (self headingFontSized: 34)}. 
				{TextFontReference toFont: (self headingFontSized: 34). TextEmphasis bold.}. 
				{TextFontReference toFont: (self headingFontSized: 34)}. 
				{}. 
				{TextEmphasis italic}}