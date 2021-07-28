tests - blockquote
testParseBlockquote12

	| output blockquote document paragraph str |
	output := parser parse: '>', Character cr, '> foo', Character cr, '>  '.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 11;
		innerLine: '';
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo' startingAt: 5.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 5;
		endPosition: 10;
		innerLine: nil;
		innerStartPosition: 5;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output