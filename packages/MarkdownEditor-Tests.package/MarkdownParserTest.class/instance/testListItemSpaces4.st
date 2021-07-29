tests - lists
testListItemSpaces4

	| document list output listItem paragraph paragraph2 |
	output := parser parse: '- one', Character cr, Character cr, Character cr,'  two'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 13;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 13;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 13;
		innerLine: 'one', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph. paragraph2});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph 
		container: listItem;
		startPosition: 3;
		endPosition: 6;
		innerStartPosition: 3;
		beClosed;
		content: 'one';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'one' startingAt: 3}).
	paragraph2 
		container: listItem;
		startPosition: 11;
		endPosition: 13;
		innerStartPosition: 11;
		beClosed;
		content: 'two';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'two' startingAt: 11}).
	
	self assert: document equals: output