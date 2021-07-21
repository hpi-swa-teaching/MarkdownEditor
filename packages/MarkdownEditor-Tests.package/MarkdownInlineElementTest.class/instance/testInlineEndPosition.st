inlines
testInlineEndPosition

	| string |
	string := MarkdownString newFrom: 'hello world'.
	string startPosition: 1.
	
	self assert: 11 equals: string endPosition