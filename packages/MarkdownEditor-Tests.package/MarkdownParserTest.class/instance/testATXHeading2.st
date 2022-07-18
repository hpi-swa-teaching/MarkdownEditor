tests - ATXHeading
testATXHeading2

	| output document heading str |
	output := parser parse: '## Level 2'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 10;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 2' startingAt: 4.
	heading
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 10;
		innerLine: '';
		innerStartPosition: 4;
		content: 'Level 2';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 2.
		
	self assert: document equals: output