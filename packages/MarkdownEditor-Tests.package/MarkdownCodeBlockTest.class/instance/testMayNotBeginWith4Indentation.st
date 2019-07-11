tests - recognition
testMayNotBeginWith4Indentation

	| line |
	line := MarkdownLine newFrom: '    ```'.
	self deny: (MarkdownCodeBlock mayBeginWith: line)