tests - lists
testListNumbers4

	| document list output listItem paragraph |
	output := parser parse: '0. ok'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 5;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 5;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 3;
		listMarker: '.';
		startNumber: 0;
		beOrdered.
	listItem container: list;
		startPosition: 1;
		endPosition: 5;
		innerLine: 'ok';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		beOrdered;
		listMarker: '.';
		number: 0;
		indentation: 3.
	paragraph 
		container: listItem;
		startPosition: 4;
		endPosition: 5;
		innerStartPosition: 4;
		beClosed;
		content: 'ok';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'ok' startingAt: 4}).
	
	self assert: document equals: output