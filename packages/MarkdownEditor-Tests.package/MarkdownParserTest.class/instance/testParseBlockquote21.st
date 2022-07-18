tests - blockquote
testParseBlockquote21

	| output blockquote blockquote2 blockquote3 document paragraph str |
	output := parser parse: '> > > foo', Character cr, 'bar'.
	blockquote := MarkdownBlockquote new.
	blockquote2 := MarkdownBlockquote new.
	blockquote3 := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: '> > foo', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {blockquote2}).
	blockquote2
		beClosed;
		container: blockquote2;
		startPosition: 3;
		endPosition: 13;
		innerLine: '> foo', Character cr;
		innerStartPosition: 5;
		children: (OrderedCollection newFrom: {blockquote3}).
	blockquote3
		beClosed;
		container: blockquote2;
		startPosition: 5;
		endPosition: 13;
		innerLine: 'foo', Character cr;
		innerStartPosition: 7;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo', Character cr, 'bar' startingAt: 7.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 7;
		endPosition: 13;
		innerLine: nil;
		innerStartPosition: 7;
		content: 'foo', Character cr, 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
				
	self assert: document equals: output