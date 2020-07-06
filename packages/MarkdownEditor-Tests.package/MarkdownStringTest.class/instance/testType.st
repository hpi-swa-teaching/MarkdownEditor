tests - state
testType

	| string |
	
	string := MarkdownString newFor: 'text' at: 6.
	self assert: 'String' equals: string type