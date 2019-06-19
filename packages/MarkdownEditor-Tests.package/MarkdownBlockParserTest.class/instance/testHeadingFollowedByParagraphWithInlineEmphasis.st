tests - text with inline
testHeadingFollowedByParagraphWithInlineEmphasis

	self
		assert: '# Title **bold**', Character cr, 'Line *italic*'
		parsesToRuns: {8. 8. 1. 5. 8}
		values: {{self headingFontSized: 34}. 
				{self headingFontSized: 34. TextEmphasis bold}. 
				{self headingFontSized: 34}. 
				{}. 
				{TextEmphasis italic}}