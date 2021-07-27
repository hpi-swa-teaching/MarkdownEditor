tests - lists
testListNumbers5

	| document list output listItem paragraph |
	output := parser parse: '001. ok'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 7;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list container: document;
		startPosition: 1;
		endPosition: 7;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 5;
		listMarker: '.';
		startNumber: 1;
		isOrdered: true.
	listItem container: list;
		startPosition: 1;
		endPosition: 7;
		innerLine: 'ok';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		isOrdered: true;
		listMarker: '.';
		indentation: 5.
	paragraph container: listItem;
		startPosition: 6;
		endPosition: 7;
		innerStartPosition: 6;
		beClosed;
		content: 'ok';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'ok' startingAt: 6}).
	
	self assert: document equals: output