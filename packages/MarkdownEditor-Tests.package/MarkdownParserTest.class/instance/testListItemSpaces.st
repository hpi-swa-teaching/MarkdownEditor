tests - lists
testListItemSpaces

	| document list output blockquote listItem paragraph paragraph2 |
	output := parser parse: '- one', Character cr, Character cr, ' two'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	blockquote := MarkdownBlockquote new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 11;
		beClosed;
		children: (OrderedCollection newFrom: {list. paragraph});
		yourself.
	list container: document;
		startPosition: 1;
		endPosition: 7;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 2;
		listMarker: '-';
		isOrdered: false.
	listItem container: list;
		startPosition: 1;
		endPosition: 7;
		innerLine: 'one', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph2});
		isOrdered: false;
		listMarker: '-';
		indentation: 2.
	paragraph2 container: listItem;
		startPosition: 3;
		endPosition: 6;
		innerStartPosition: 3;
		beClosed;
		content: 'one';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'one' startingAt: 3}).
	paragraph container: document;
		startPosition: 8;
		endPosition: 11;
		innerStartPosition: 9;
		beClosed;
		content: 'two';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'two' startingAt: 9}).
	self assert: document equals: output