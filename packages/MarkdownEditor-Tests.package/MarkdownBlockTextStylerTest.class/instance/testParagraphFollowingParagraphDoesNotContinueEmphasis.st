tests - text with inline
testParagraphFollowingParagraphDoesNotContinueEmphasis

	self
		assertRuns: {13}
		values: {{}}
		areStyledResultOf: '**not', Character cr, Character cr, 'bold**'