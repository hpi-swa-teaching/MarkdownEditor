tests - lazyContinuation
testLazyBlockquote

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '> abc', Character cr, ' de') document.
	self assert: MarkdownBlockquote equals: (document := document children first) class.
	self assert: MarkdownParagraph equals: (document := document children first) class.
	self assert: 'abc de' equals: document content