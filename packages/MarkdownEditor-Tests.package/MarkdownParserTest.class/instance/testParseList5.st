tests - lists
testParseList5

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
		endPosition: 19;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 19;
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
		number: 1;
		indentation: 3.
	paragraph 
		container: listItem;
		startPosition: 4;
		endPosition: 7;
		innerStartPosition: 4;
		beClosed;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo' startingAt: 4}).
	listItem2
		container: list;
		startPosition: 8;
		endPosition: 13;
		innerLine: '  ', Character cr;
		beClosed;
		beOrdered;
		listMarker: '.';
		number: 2;
		indentation: 3.
	listItem3
		container: list;
		startPosition: 14;
		endPosition: 19;
		innerLine: 'bar';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3});
		beOrdered;
		listMarker: '.';
		number: 3;
		indentation: 3.
	paragraph3
		container: listItem3;
		startPosition: 17;
		endPosition: 19;
		innerStartPosition: 17;
		beClosed;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar' startingAt: 17}).
			
	self assert: document equals: output