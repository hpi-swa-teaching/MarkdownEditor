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
	str := MarkdownString newFrom: 'Level 6'.
	str startPosition: 1.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 14;
		innerLine: '';
		innerStartPosition: 8;
		content: 'Level 6';
		inlines: (MarkdownLinkedList newFrom: {str});
		level: 1.
	self assert: document equals: output