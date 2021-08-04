tests - lazyContinuation
testOuterLooseList

	| document |
	document := (MarkdownParser new) parse: '* foo', Character cr, '  * bar', Character cr, Character cr, '  baz'.
	
	self assert: MarkdownList equals: (document := document children first) class.
	self assert: MarkdownListItem equals: (document := document children last) class.
	self assert: MarkdownParagraph equals: document children first class.
	self assert: 'foo' equals: document children first content.
	self assert: 'baz' equals: document children last content.
	self assert: MarkdownList equals: (document := document children second) class.
	self assert: MarkdownListItem equals: (document := document children last) class.
	self assert: MarkdownParagraph equals: (document := document children first) class.
	self assert: 'bar' equals: document content