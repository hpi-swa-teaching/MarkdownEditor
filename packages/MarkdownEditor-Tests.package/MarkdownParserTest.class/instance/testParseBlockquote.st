tests - blockquote
testParseBlockquote

	| output blockquote document heading paragraph str str2 |
	output := parser parse: '> # foo', Character cr, '> bar', Character cr, '> baz'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 19;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 19;
		innerLine: '# foo', Character cr asString;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {heading. paragraph}).
	str := MarkdownString newFrom: 'foo' startingAt: 5.
	heading
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 10;
		innerLine: '';
		innerStartPosition: 5;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 1.
	str2 := MarkdownString newFrom: 'bar', Character cr, 'baz' startingAt: 11.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 11;
		endPosition: 19;
		innerLine: nil;
		innerStartPosition: 11;
		content: 'bar', Character cr, 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output