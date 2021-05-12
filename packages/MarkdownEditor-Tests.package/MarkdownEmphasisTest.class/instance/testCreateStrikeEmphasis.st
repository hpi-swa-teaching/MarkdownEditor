tests
testCreateStrikeEmphasis

	| emphasis |
	emphasis := MarkdownStrike from: 1 to: 2.
	self assert: TextEmphasis struckOut equals: emphasis textAttribute