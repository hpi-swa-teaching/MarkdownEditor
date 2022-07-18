tests - lists
testParseList11

	| output document list list2 listItem paragraph listItem2 listItem3 paragraph2 paragraph3 |
	output := parser parse: '1. foo
2. bar
3) baz'.
	list := MarkdownList new.
	list2 := MarkdownList new.
	listItem := MarkdownListItem new.
	listItem2 := MarkdownListItem new.
	listItem3 := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	paragraph3 := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 20;
		beClosed;
		children: (OrderedCollection newFrom: {list. list2});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 14;
		beClosed;
		children: (OrderedCollection newFrom: {listItem. listItem2});
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
		endPosition: 14;
		innerLine: 'bar', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph2});
		beOrdered;
		listMarker: '.';
		number: 2;
		indentation: 3.
	paragraph2
		container: listItem2;
		startPosition: 11;
		endPosition: 14;
		innerStartPosition: 11;
		beClosed;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar' startingAt: 11}).
	list2
		container: document;
		startPosition: 15;
		endPosition: 20;
		beClosed;
		children: (OrderedCollection newFrom: {listItem3});
		indentation: 3;
		listMarker: ')';
		startNumber: 3;
		beOrdered.
	listItem3
		container: list2;
		startPosition: 15;
		endPosition: 20;
		innerLine: 'baz';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3});
		beOrdered;
		listMarker: ')';
		number: 3;
		indentation: 3.
	paragraph3
		container: listItem3;
		startPosition: 18;
		endPosition: 20;
		innerStartPosition: 18;
		beClosed;
		content: 'baz';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'baz' startingAt: 18}).
			
	self assert: document equals: output