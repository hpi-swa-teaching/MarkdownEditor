tests - extendability
test3BackticksDontClose4Backticks

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '````', Character cr.
	codeBlock append: '```', Character cr.
	self deny: codeBlock isClosed