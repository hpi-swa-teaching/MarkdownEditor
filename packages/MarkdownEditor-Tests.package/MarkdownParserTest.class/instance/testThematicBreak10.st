tests - thematic break
testThematicBreak10

	| output document break paragraph paragraph2 str str2 |
	output := parser parse: 'Foo', Character cr, '***', Character cr, 'bar'.
	break := MarkdownThematicBreak new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {paragraph. break. paragraph2}).
	str := MarkdownString newFrom: 'Foo' startingAt: 1.
	paragraph
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 4;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'Foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	break
		beClosed;
		container: document;
		startPosition: 5;
		endPosition: 8;
		innerLine: '';
		innerStartPosition: 9;
		content: ''.
	str2 := MarkdownString newFrom: 'bar' startingAt: 9.
	paragraph2
		beClosed;
		container: document;
		startPosition: 9;
		endPosition: 11;
		innerLine: nil;
		innerStartPosition: 9;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
	
	self assert: document equals: output