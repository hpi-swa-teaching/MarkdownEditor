tests - text with inline
testParagraphFollowingParagraphDoesNotContinueEmphasis

	self
		assert: '**not

bold**'
		parsesToRuns: {13}
		values: {{}}