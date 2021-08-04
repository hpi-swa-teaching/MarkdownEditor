tests - blockquote
testParseBlockquote15

	| output blockquote document paragraph paragraph2 str str2 |
	output := parser parse: '> foo', Character cr, '>', Character cr, '> bar'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
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
		innerLine: 'foo', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph. paragraph2}).
	str := MarkdownString newFrom: 'foo' startingAt: 3.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 8;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	str2 := MarkdownString newFrom: 'bar' startingAt: 11.
	paragraph2
		beClosed;
		container: blockquote;
		startPosition: 11;
		endPosition: 13;
		innerLine: nil;
		innerStartPosition: 11;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
	
	self assert: document equals: output