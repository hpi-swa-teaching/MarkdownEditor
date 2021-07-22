tests - ATXHeading
testATXHeading3

	| output document heading str |
	output := parser parse: '### Level 3'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 3'.
	str startPosition: 1.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 11;
		innerLine: '';
		innerStartPosition: 5;
		content: 'Level 3';
		inlines: (MarkdownLinkedList newFrom: {str});
		level: 1.
	self assert: document equals: output