tests - ATXHeading
testATXHeadingWithClosingSequence3

	| output document heading str |
	output := parser parse: '### foo ###     '.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 16;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'foo' startingAt: 5.
	heading
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 16;
		innerLine: '';
		innerStartPosition: 5;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 3.
		
	self assert: document equals: output