tests - complex
test4LineExample

	| document |
	document := MarkdownDocument newFrom: ''.
	document := ((MarkdownParser new document: document) parse: '> Lorem ipsum dolor', Character cr, ' sit amet.', Character cr, '> - Qui *quodsi iracundia*', Character cr, '> - aliquando id') document.
	self assert: MarkdownBlockquote2 equals: (document := document children last) class.
	self assert: MarkdownParagraph2 equals: document children first class.
	self assert: 'Lorem ipsum dolor sit amet.' equals: document children first content.
	self assert: MarkdownList2 equals: (document := document children last) class.
	self assert: MarkdownParagraph2 equals: document children last children first class.
	self assert: MarkdownListItem2 equals: (document := document children first) class.
	self assert: MarkdownParagraph2 equals: (document := document children first) class.
	self assert: MarkdownItalic2 equals: document inlines second class.
	self assert: 'quodsi iracundia' equals: document inlines second children first content.