tests - ATXHeading
testATXHeading3

	| output document heading str |
	output := parser parse: '### Level 3'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 3' startingAt: 5.
	heading
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 11;
		innerLine: '';
		innerStartPosition: 5;
		content: 'Level 3';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 3.
		
	self assert: document equals: output