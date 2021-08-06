tests - lists
testParseList10

	| output document list listItem paragraph listItem2 listItem3 paragraph3 |
	output := parser parse: '1. foo
2.
3. bar'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	listItem2 := MarkdownListItem new.
	listItem3 := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph3 := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 16;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 16;
		beClosed;
		children: (OrderedCollection newFrom: {listItem. listItem2. listItem3});
		indentation: 3;
		listMarker: '.';
		startNumber: 1;
		beOrdered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 7;
		innerLine: 'foo', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		beOrdered;
		listMarker: '.';
		indentation: 3;
		number: 1.
	paragraph 
		container: listItem;
		startPosition: 4;
		endPosition: 7;
		innerStartPosition: 4;
		content: 'foo';
		beClosed;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo' startingAt: 4}).
	listItem2
		container: list;
		startPosition: 8;
		endPosition: 10;
		innerLine: '';
		beClosed;
		beOrdered;
		listMarker: '.';
		indentation: 3;
		number: 2.
	listItem3
		container: list;
		startPosition: 11;
		endPosition: 16;
		innerLine: 'bar';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3});
		beOrdered;
		listMarker: '.';
		indentation: 3;
		number: 3.
	paragraph3
		container: listItem;
		startPosition: 14;
		endPosition: 16;
		innerStartPosition: 14;
		content: 'bar';
		beClosed;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar' startingAt: 14}).
	self assert: document equals: output