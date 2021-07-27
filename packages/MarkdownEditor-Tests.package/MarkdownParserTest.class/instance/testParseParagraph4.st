tests - paragraph
testParseParagraph4

	| output document paragraph paragraph2 str str2 |
	output := parser parse: 'aaa', Character cr, Character cr, Character cr, 'bbb'.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 9;
		children: (OrderedCollection newFrom: {paragraph. paragraph2}).
	str := MarkdownString newFrom: 'aaa' startingAt: 1.
	paragraph
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 4;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'aaa';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	str2 := MarkdownString newFrom: 'bbb' startingAt: 7.
	paragraph2
		beClosed;
		container: document;
		startPosition: 7;
		endPosition: 9;
		innerLine: nil;
		innerStartPosition: 7;
		content: 'bbb';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output