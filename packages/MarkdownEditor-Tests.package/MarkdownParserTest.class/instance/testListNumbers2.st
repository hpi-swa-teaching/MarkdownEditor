tests - lists
testListNumbers2

	| document output paragraph |
	output := parser parse: '1234567890. not ok'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 18;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		yourself.
	paragraph container: document;
		startPosition: 1;
		endPosition: 18;
		innerStartPosition: 1;
		beClosed;
		content: '1234567890. not ok';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: '1234567890. not ok' startingAt: 1}).
	
	self assert: document equals: output