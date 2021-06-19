tests - singeLines
testFalseNesting

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '# > test') document.
	self assert: MarkdownATXHeading2 equals: document children first class.
	self assert: '> test' equals: document children first content.