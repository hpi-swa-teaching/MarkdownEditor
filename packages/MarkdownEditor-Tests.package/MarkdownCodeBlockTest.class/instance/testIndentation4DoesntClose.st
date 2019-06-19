tests - extendability
testIndentation4DoesntClose

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
	codeBlock append: '    ```', Character cr.
	self deny: codeBlock isClosed