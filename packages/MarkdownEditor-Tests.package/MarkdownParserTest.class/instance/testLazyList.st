tests - lazyContinuation
testLazyList

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '- abc', Character cr, '  de') document.
	self assert: MarkdownList2 equals: (document := document children first) class.
	self assert: MarkdownListItem2 equals: (document := document children first) class.
	self assert: MarkdownParagraph2 equals: (document := document children first) class.
	self assert: 'abcde' equals: document content