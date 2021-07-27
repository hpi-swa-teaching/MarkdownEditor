tests - ATXHeading
testATXHeadingWithClosingSequence4

	| output document heading str |
	output := parser parse: '### foo ### b'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'foo ### b' startingAt: 5.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: '';
		innerStartPosition: 5;
		content: 'foo ### b';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 3.
	self assert: document equals: output