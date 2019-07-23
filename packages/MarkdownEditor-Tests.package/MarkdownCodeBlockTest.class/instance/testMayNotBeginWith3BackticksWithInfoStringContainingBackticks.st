tests - recognition
testMayNotBeginWith3BackticksWithInfoStringContainingBackticks

	| line |
	line := MarkdownLine newFrom: '```small`talk'.
	self deny: (MarkdownCodeBlock mayBeginWith: line)