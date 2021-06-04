tests - text with inline
testHeadingFollowedByParagraphWithInlineEmphasis

	| text expectedColor |
	text := ('# Title **bold**', Character cr, 'Line *italic*') asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {8. 8. 1. 5. 8}
		values: {{TextColor color: expectedColor. self fontSized: 34}.
				{TextColor color: expectedColor. self fontSized: 34. TextEmphasis bold}.
				{TextColor color: expectedColor. self fontSized: 34}.
				{TextColor color: expectedColor. self fontSized: 14}.
				{TextColor color: expectedColor. self fontSized: 14. TextEmphasis italic}}
		areStyleOf: text