tests - lists
testListNumbers

	| document list output listItem paragraph |
	output := parser parse: '123456789. ok'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 13;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list container: document;
		startPosition: 1;
		endPosition: 13;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 11;
		listMarker: '.';
		startNumber: 123456789;
		isOrdered: true.
	listItem container: list;
		startPosition: 1;
		endPosition: 13;
		innerLine: 'ok';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		isOrdered: true;
		listMarker: '.';
		indentation: 11.
	paragraph container: listItem;
		startPosition: 12;
		endPosition: 13;
		innerStartPosition: 12;
		beClosed;
		content: 'ok';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'ok' startingAt: 12}).
	
	self assert: document equals: output