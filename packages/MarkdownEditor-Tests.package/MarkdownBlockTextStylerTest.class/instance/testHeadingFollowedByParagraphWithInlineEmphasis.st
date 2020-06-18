tests - text with inline
testHeadingFollowedByParagraphWithInlineEmphasis

	| text |
	text := ('# Title **bold**', Character cr, 'Line *italic*') asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {8. 8. 1. 5. 8}
		values: {{TextColor black. self fontSized: 34}.
				{TextColor black. self fontSized: 34. TextEmphasis bold}.
				{TextColor black. self fontSized: 34}.
				{TextColor black. self fontSized: 14}.
				{TextColor black. self fontSized: 14. TextEmphasis italic}}
		areStyleOf: text