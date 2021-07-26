tests - paragraph
testParseParagraphWithLeadingSpaces3

	| output document paragraph str |
	output := parser parse: '   aaa', Character cr, 'bbb'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document beClosed;
		startPosition: 1;
		endPosition: 10;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'aaa', Character cr, 'bbb' startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 10;
		innerLine: nil;
		innerStartPosition: 4;
		content: 'aaa', Character cr, 'bbb';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output