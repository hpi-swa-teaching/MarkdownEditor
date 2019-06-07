tests - extendability
testIndentation2Closes

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	codeBlock append: '  ```', Character cr.
	self assert: codeBlock isClosed