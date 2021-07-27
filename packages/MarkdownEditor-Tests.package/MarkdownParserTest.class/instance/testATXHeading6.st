tests - ATXHeading
testATXHeading6

	| output document heading str |
	output := parser parse: '###### Level 6'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 14;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 6' startingAt: 8.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 14;
		innerLine: '';
		innerStartPosition: 8;
		content: 'Level 6';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 6.
	self assert: document equals: output