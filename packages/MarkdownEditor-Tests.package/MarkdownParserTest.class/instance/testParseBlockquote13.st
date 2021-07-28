tests - blockquote
testParseBlockquote13

	| output blockquote blockquote2 document paragraph paragraph2 str str2 |
	output := parser parse: '> foo', Character cr, Character cr, '> bar'.
	blockquote := MarkdownBlockquote new.
	blockquote2 := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 12;
		children: (OrderedCollection newFrom: {blockquote. blockquote2}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'foo', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo' startingAt: 3.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	blockquote2
		beClosed;
		container: document;
		startPosition: 8;
		endPosition: 12;
		innerLine: 'bar';
		innerStartPosition: 10;
		children: (OrderedCollection newFrom: {paragraph2}).
	str2 := MarkdownString newFrom: 'bar' startingAt: 10.
	paragraph2
		beClosed;
		container: blockquote;
		startPosition: 10;
		endPosition: 12;
		innerLine: nil;
		innerStartPosition: 10;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
	
	self assert: document equals: output