tests - text with inline
testHeadingFollowedByParagraphWithInlineEmphasis

	self
		assertRuns: {8. 8. 1. 5. 8}
		values: {{self headingFontSized: 34}.
				{self headingFontSized: 34. TextEmphasis bold}.
				{self headingFontSized: 34}.
				{}.
				{TextEmphasis italic}}
		areStyledResultOf: '# Title **bold**', Character cr, 'Line *italic*'