tests - ATXHeading
testEmptyATXHeading

	| output document heading |
	output := parser parse: '# '.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 2;
		children: (OrderedCollection newFrom: {heading}).
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 2;
		innerLine: '';
		innerStartPosition: 0;
		content: '';
		inlineElements: (MarkdownLinkedList new);
		level: 1.
	self assert: document equals: output