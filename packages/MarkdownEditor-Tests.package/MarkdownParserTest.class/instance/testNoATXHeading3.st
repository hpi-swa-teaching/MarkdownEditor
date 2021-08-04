tests - ATXHeading
testNoATXHeading3

	| output document paragraph str |
	output := parser parse: '\## foo'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 7;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '\## foo' startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 7;
		innerLine: nil;
		innerStartPosition: 1;
		content: '\## foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output