tests - extendability
testIndentation1Closes

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	codeBlock append: ' ```', Character cr.
	self assert: codeBlock isClosed