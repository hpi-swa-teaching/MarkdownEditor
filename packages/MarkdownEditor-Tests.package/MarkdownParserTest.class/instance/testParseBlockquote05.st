tests - blockquote
testParseBlockquote05

	| output blockquote document paragraph str |
	output := parser parse: '> bar', Character cr, 'baz', Character cr, '> foo'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 15;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 15;
		innerLine: 'bar', Character cr asString;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'bar', Character cr, 'baz', Character cr, 'foo' startingAt: 3.
	paragraph
		beClosed;
		container: document;
		startPosition: 3;
		endPosition: 15;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'bar', Character cr, 'baz', Character cr, 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output