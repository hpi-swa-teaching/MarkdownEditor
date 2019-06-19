tests - extendability
test3BackticksWithWhitespacesDontClose

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	codeBlock append: '` ``', Character cr.
	self deny: codeBlock isClosed