tests - text with inline
testParagraphFollowingParagraphDoesNotContinueEmphasis

	| text expectedColor |
	text := ('**not', Character cr, Character cr, 'bold**') asText.
	blockTextStyler privateStyle: text.
	expectedColor := MarkdownStyleSettings themeTitleFontColor. 
	self
		assertRuns: {13}
		values: {{TextColor color: expectedColor. self fontSized: 14}}
		areStyleOf: text