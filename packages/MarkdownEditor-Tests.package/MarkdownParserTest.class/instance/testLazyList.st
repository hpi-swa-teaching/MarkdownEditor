tests - lazyContinuation
testLazyList

	| document |
	document := (MarkdownParser new) parse: '- abc', Character cr, '  de'.
	
	self assert: MarkdownList equals: (document := document children first) class.
	self assert: MarkdownListItem equals: (document := document children first) class.
	self assert: MarkdownParagraph equals: (document := document children first) class.
	self assert: 'abc', Character cr, 'de' equals: document content