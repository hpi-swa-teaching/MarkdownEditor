tests - extendability
testIndentation1To3Closes

	{' ```'. '  ```'. '   ```'} do: [:closingString | | codeBlock |
		codeBlock := MarkdownCodeBlock newFrom: (MarkdownLine newFrom: '```', Character cr).
		codeBlock append: (MarkdownLine newFrom: closingString, Character cr).
		self assert: codeBlock isClosed]