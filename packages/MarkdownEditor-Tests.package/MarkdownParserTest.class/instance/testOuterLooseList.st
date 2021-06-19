tests - lazyContinuation
testOuterLooseList

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '* foo', Character cr, '  * bar', Character cr, Character cr, '  baz') document.
	self assert: MarkdownList2 equals: (document := document children first) class.
	self assert: MarkdownListItem2 equals: (document := document children last) class.
	self assert: MarkdownParagraph2 equals: document children first class.
	self assert: 'foo' equals: document children first content.
	self assert: 'baz' equals: document children last content.
	self assert: MarkdownListItem2 equals: (document := document children second) class.
	self assert: MarkdownParagraph2 equals: (document := document children first) class.
	self assert: 'bar' equals: document content