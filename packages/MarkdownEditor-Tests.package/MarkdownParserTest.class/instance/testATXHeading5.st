tests - ATXHeading
testATXHeading5

	| output document heading str |
	output := parser parse: '##### Level 5'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 5' startingAt: 1.
	str startPosition: 1.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: '';
		innerStartPosition: 7;
		content: 'Level 5';
		inlines: (MarkdownLinkedList newFrom: {str});
		level: 5.
	self assert: document equals: output