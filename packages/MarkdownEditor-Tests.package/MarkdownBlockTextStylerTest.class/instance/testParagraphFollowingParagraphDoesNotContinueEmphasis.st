tests - text with inline
testParagraphFollowingParagraphDoesNotContinueEmphasis

	| text |
	text := ('**not', Character cr, Character cr, 'bold**') asText.
	blockTextStyler privateStyle: text.
	self
		assertRuns: {13}
		values: {{}}
		areStyleOf: text