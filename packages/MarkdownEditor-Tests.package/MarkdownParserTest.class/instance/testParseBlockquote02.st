tests - blockquote
testParseBlockquote02

	| output blockquote document heading paragraph str str2 |
	output := parser parse: '># foo', Character cr, '>bar', Character cr, '> baz'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 17;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 17;
		innerLine: '# foo', Character cr asString;
		innerStartPosition: 2;
		children: (OrderedCollection newFrom: {heading. paragraph}).
	str := MarkdownString newFrom: 'foo' startingAt: 4.
	heading
		beClosed;
		container: blockquote;
		startPosition: 2;
		endPosition: 8;
		innerLine: '';
		innerStartPosition: 4;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 1.
	str2 := MarkdownString newFrom: 'bar', Character cr, 'baz' startingAt: 9.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 9;
		endPosition: 17;
		innerLine: nil;
		innerStartPosition: 9;
		content: 'bar', Character cr, 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output