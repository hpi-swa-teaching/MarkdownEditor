tests - complex
test4LineExample

	| document |
	document := (MarkdownParser new) parse: '> Lorem ipsum dolor', Character cr, ' sit amet.', Character cr, '> - Qui *quodsi iracundia*', Character cr, '> - aliquando id'.
	self assert: MarkdownBlockquote equals: (document := document children last) class.
	self assert: MarkdownParagraph equals: document children first class.
	self assert: 'Lorem ipsum dolor
sit amet.' equals: document children first content.
	self assert: MarkdownList equals: (document := document children last) class.
	self assert: MarkdownParagraph equals: document children last children first class.
	self assert: MarkdownListItem equals: (document := document children first) class.
	self assert: MarkdownParagraph equals: (document := document children first) class.
	self assert: MarkdownItalic equals: document inlineElements second class.
	self assert: 'quodsi iracundia' equals: document inlineElements second children first content