tests - singeLines
testBlockNesting

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '> - # test') document.
	self assert: MarkdownBlockquote2 equals: (document := document children first) class.
	self assert: MarkdownList2 equals: (document := document children first) class.
	self assert: MarkdownListItem2 equals: (document := document children first) class.
	self assert: MarkdownATXHeading2 equals: document children first class.
	self assert: 'test' equals: document children first content.