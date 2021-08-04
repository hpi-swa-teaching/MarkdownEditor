tests - blockquote
testParseBlockquote16

	| output blockquote document paragraph paragraph2 str str2 |
	output := parser parse: 'foo', Character cr, '> bar'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 9;
		children: (OrderedCollection newFrom: {paragraph. blockquote}).
	str := MarkdownString newFrom: 'foo' startingAt: 1.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 1;
		endPosition: 4;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	blockquote
		beClosed;
		container: document;
		startPosition: 5;
		endPosition: 9;
		innerLine: 'bar';
		innerStartPosition: 7;
		children: (OrderedCollection newFrom: {paragraph2}).
	str2 := MarkdownString newFrom: 'bar' startingAt: 7.
	paragraph2
		beClosed;
		container: blockquote;
		startPosition: 7;
		endPosition: 9;
		innerLine: nil;
		innerStartPosition: 7;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
	
	self assert: document equals: output