tests - blockquote
testParseBlockquote22

	| output blockquote blockquote2 blockquote3 document paragraph str |
	output := parser parse: '>>> foo', Character cr, '> bar', Character cr, '>> baz'.
	blockquote := MarkdownBlockquote new.
	blockquote2 := MarkdownBlockquote new.
	blockquote3 := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 20;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 20;
		innerLine: '>> foo', Character cr;
		innerStartPosition: 2;
		children: (OrderedCollection newFrom: {blockquote2}).
	blockquote2
		beClosed;
		container: blockquote2;
		startPosition: 2;
		endPosition: 20;
		innerLine: '> foo', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {blockquote3}).
	blockquote3
		beClosed;
		container: blockquote2;
		startPosition: 3;
		endPosition: 20;
		innerLine: 'foo', Character cr;
		innerStartPosition: 5;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo', Character cr, 'bar', Character cr, 'baz' startingAt: 5.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 5;
		endPosition: 20;
		innerLine: nil;
		innerStartPosition: 5;
		content: 'foo', Character cr, 'bar', Character cr, 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
				
	self assert: document equals: output