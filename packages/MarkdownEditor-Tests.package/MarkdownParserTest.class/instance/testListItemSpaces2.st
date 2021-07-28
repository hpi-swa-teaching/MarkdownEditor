tests - lists
testListItemSpaces2

	| document list output listItem paragraph paragraph2 |
	output := parser parse: ' -    one', Character cr, Character cr, '      two'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 20;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 20;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 6;
		listMarker: '-';
		beUnordered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 20;
		innerLine: 'one', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph. paragraph2});
		beUnordered;
		listMarker: '-';
		indentation: 6.
	paragraph 
		container: listItem;
		startPosition: 7;
		endPosition: 10;
		innerStartPosition: 7;
		beClosed;
		content: 'one';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'one' startingAt: 7}).
	paragraph2 
		container: listItem;
		startPosition: 18;
		endPosition: 20;
		innerStartPosition: 18;
		beClosed;
		content: 'two';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'two' startingAt: 18}).
	
	self assert: document equals: output