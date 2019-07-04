tests - extendability
test3BackticksDontClose4Backticks

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '````', Character cr).
	codeBlock append: (MarkdownLine newFrom: '```', Character cr).
	self deny: codeBlock isClosed