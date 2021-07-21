tests - lazyContinuation
testLazyBlockquote

	| document |
	document := (MarkdownParser new) parse: '> abc', Character cr, ' de'.
	self assert: MarkdownBlockquote equals: (document := document children first) class.
	self assert: MarkdownParagraph equals: (document := document children first) class.
	self assert: 'abc
de' equals: document content