tests - singeLines
testBlockNesting

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '> - # test') document.
	self assert: MarkdownBlockquote equals: (document := document children first) class.
	self assert: MarkdownList equals: (document := document children first) class.
	self assert: MarkdownListItem equals: (document := document children first) class.
	self assert: MarkdownATXHeading equals: document children first class.
	self assert: 'test' equals: document children first content