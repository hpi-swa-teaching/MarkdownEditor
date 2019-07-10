tests - text with inline
testHeadingFollowedByParagraphWithInlineEmphasis

	| text |
	text := ('# Title **bold**', Character cr, 'Line *italic*') asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {8. 8. 1. 5. 8}
		values: {{self headingFontSized: 34}.
				{self headingFontSized: 34. TextEmphasis bold}.
				{self headingFontSized: 34}.
				{}.
				{TextEmphasis italic}}
		areStyleOf: text