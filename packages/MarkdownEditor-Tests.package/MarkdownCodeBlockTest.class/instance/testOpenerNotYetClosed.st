tests - extendability
testOpenerNotYetClosed

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```'.
	self deny: codeBlock isClosed