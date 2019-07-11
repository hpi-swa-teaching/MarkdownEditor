tests - extendability
testIndentation4DoesntClose

	| codeBlock |
	codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
	codeBlock append: (MarkdownLine newFrom: '    ```', Character cr).
	self deny: codeBlock isClosed