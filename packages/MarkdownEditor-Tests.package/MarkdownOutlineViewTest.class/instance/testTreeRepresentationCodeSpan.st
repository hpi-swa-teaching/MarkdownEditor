tests - treeRepresentation
testTreeRepresentationCodeSpan

	| code |
	code := MarkdownCodeSpan newFrom: 'self halt' fenceLength: 0.
	
	self assert: {'self halt'} equals: code treeRepresentation