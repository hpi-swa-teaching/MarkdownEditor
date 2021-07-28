tests - blockquote
testParseBlockquote11

	| output blockquote document paragraph |
	output := parser parse: '>', Character cr, '>  ', Character cr, '> '.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 8;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 8;
		innerLine: '';
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {}).
		
	self assert: document equals: output