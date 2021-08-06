tests - treeRepresentation
testTreeRepresentationString


	| str |
	str := MarkdownString newFrom: 'hello'.
	
	self assert: {'hello'} equals: str treeRepresentation