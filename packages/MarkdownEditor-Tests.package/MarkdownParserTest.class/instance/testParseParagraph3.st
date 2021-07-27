tests - paragraph
testParseParagraph3

	| output document paragraph paragraph2 str str2 |
	output := parser parse: 'aaa', Character cr, 'bbb', Character cr, Character cr, 'ccc', Character cr, 'ddd'.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 16;
		children: (OrderedCollection newFrom: {paragraph. paragraph2}).
	str := MarkdownString newFrom: 'aaa', Character cr, 'bbb' startingAt: 1.
	paragraph
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 8;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'aaa', Character cr, 'bbb';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	str2 := MarkdownString newFrom: 'ccc', Character cr, 'ddd' startingAt: 10.
	paragraph2
		beClosed;
		container: document;
		startPosition: 10;
		endPosition: 16;
		innerLine: nil;
		innerStartPosition: 10;
		content: 'ccc', Character cr, 'ddd';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output