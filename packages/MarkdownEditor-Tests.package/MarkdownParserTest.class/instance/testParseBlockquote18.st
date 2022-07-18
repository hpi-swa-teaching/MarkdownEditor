tests - blockquote
testParseBlockquote18

	| output blockquote document paragraph str |
	output := parser parse: '> bar', Character cr, 'baz'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 9;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 9;
		innerLine: 'bar', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'bar', Character cr, 'baz' startingAt: 3.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 9;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'bar', Character cr, 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output