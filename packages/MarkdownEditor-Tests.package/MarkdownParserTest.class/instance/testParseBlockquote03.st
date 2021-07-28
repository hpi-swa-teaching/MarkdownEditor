tests - blockquote
testParseBlockquote03

	| output blockquote document heading paragraph str str2 |
	output := parser parse: '   > # foo', Character cr, '   > bar', Character cr, ' > baz'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 26;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 26;
		innerLine: '# foo', Character cr asString;
		innerStartPosition: 6;
		children: (OrderedCollection newFrom: {heading. paragraph}).
	str := MarkdownString newFrom: 'foo' startingAt: 8.
	heading
		beClosed;
		container: blockquote;
		startPosition: 6;
		endPosition: 16;
		innerLine: '';
		innerStartPosition: 8;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 1.
	str2 := MarkdownString newFrom: 'bar', Character cr, 'baz' startingAt: 17.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 17;
		endPosition: 26;
		innerLine: nil;
		innerStartPosition: 17;
		content: 'bar', Character cr, 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output