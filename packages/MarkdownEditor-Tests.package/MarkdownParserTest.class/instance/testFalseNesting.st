tests - singeLines
testFalseNesting

	| document |
	document := (MarkdownParser new) parse: '# > test'.
	
	self assert: MarkdownATXHeading equals: document children first class.
	self assert: '> test' equals: document children first content