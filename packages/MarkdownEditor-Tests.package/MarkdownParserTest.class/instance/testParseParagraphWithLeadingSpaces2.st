tests - paragraph
testParseParagraphWithLeadingSpaces2

	| output document paragraph str |
	output := parser parse: 'aaa', Character cr, '             bbb', Character cr, '                                       ccc'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 63;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'aaa', Character cr, 'bbb', Character cr, 'ccc' startingAt: 1.
	paragraph
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 63;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'aaa', Character cr, 'bbb', Character cr, 'ccc';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output