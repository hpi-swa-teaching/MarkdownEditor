tests - extendability
testOpenerNotYetClosed

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```').
	self deny: codeBlock isClosed