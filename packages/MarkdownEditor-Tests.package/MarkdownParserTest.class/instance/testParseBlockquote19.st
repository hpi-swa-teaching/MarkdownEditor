tests - blockquote
testParseBlockquote19

	| output blockquote document paragraph paragraph2 str str2 |
	output := parser parse: '> bar', Character cr, Character cr, 'baz'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 10;
		children: (OrderedCollection newFrom: {blockquote. paragraph2}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'bar', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'bar' startingAt: 3.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	str2 := MarkdownString newFrom: 'baz' startingAt: 8.
	paragraph2
		beClosed;
		container: blockquote;
		startPosition: 8;
		endPosition: 10;
		innerLine: nil;
		innerStartPosition: 8;
		content: 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
				
	self assert: document equals: output