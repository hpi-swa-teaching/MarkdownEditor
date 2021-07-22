tests - ATXHeading
testNoATXHeading2

	| output document paragraph str |
	output := parser parse: '#1 Level 1'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 10;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '#1 Level 1'.
	str startPosition: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 10;
		innerLine: nil;
		innerStartPosition: 1;
		content: '#1 Level 1';
		inlines: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output