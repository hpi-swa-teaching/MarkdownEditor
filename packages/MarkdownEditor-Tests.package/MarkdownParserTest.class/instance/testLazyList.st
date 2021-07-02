tests - lazyContinuation
testLazyList

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '- abc', Character cr, '  de') document.
	self assert: MarkdownList equals: (document := document children first) class.
	self assert: MarkdownListItem equals: (document := document children first) class.
	self assert: MarkdownParagraph equals: (document := document children first) class.
	self assert: 'abcde' equals: document content