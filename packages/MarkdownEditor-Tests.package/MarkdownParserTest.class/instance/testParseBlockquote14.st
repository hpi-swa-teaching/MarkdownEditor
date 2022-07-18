tests - blockquote
testParseBlockquote14

	| output blockquote document paragraph str |
	output := parser parse: '> foo', Character cr, '> bar'.
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
		innerLine: 'foo', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo', Character cr, 'bar' startingAt: 3.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 11;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'foo', Character cr, 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	
	self assert: document equals: output