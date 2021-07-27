tests - lists
testListNumbers3

	| document output paragraph |
	output := parser parse: '-1. not ok'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 10;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		yourself.
	paragraph container: document;
		startPosition: 1;
		endPosition: 10;
		innerStartPosition: 1;
		beClosed;
		content: '-1. not ok';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: '-1. not ok' startingAt: 1}).
	
	self assert: document equals: output