tests - ATXHeading
testNoATXHeading

	| output document paragraph str |
	output := parser parse: '#Level 1'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 8;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '#Level 1' startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 8;
		innerLine: nil;
		innerStartPosition: 1;
		content: '#Level 1';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output