tests - extendability
test3BackticksClose3Backticks

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	codeBlock append: '```', Character cr.
	self assert: codeBlock isClosed