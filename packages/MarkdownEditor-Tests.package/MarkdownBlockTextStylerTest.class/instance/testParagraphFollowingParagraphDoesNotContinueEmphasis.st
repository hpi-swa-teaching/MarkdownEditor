tests - text with inline
testParagraphFollowingParagraphDoesNotContinueEmphasis

	self
		assert: '**not', Character cr, Character cr, 'bold**'
		parsesToRuns: {13}
		values: {{}}