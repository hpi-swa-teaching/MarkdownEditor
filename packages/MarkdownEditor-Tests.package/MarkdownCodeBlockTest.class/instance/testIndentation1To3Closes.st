tests - extendability
testIndentation1To3Closes

	{' ```'. '  ```'. '   ```'} do: [:closingLine | | codeBlock |
		codeBlock := MarkdownCodeBlock newFrom: '```', Character cr.
		codeBlock append: closingLine, Character cr.
		self assert: codeBlock isClosed]