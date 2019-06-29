tests - matching
testMayNotBeginWith3BackticksWithInfoStringContainingBackticks

	self deny: (MarkdownCodeBlock mayBeginWith: '```smallt`alk')