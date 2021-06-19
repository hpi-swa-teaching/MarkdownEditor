tests - lazyContinuation
testLazyBlockquote

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '> abc', Character cr, ' de') document.
	self assert: MarkdownBlockquote2 equals: (document := document children first) class.
	self assert: MarkdownParagraph2 equals: (document := document children first) class.
	self assert: 'abc de' equals: document content