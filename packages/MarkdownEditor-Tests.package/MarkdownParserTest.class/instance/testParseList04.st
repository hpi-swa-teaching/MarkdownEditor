tests - lists
testParseList04

	| output document list listItem paragraph listItem2 listItem3 paragraph3 |
	output := parser parse: '- foo
-
- bar'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	listItem2 := MarkdownListItem new.
	listItem3 := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph3 := MarkdownParagraph new.
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
		children: (OrderedCollection newFrom: {listItem. listItem2. listItem3});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'foo', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph 
		container: listItem;
		startPosition: 3;
		endPosition: 6;
		innerStartPosition: 3;
		beClosed;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo' startingAt: 3}).
	listItem2
		container: list;
		startPosition: 7;
		endPosition: 8;
		innerLine: '';
		beClosed;
		beUnordered;
		listMarker: '-';
		indentation: 2.
	listItem3
		container: list;
		startPosition: 9;
		endPosition: 13;
		innerLine: 'bar';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph3
		container: listItem3;
		startPosition: 11;
		endPosition: 13;
		innerStartPosition: 11;
		beClosed;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar' startingAt: 11}).
			
	self assert: document equals: output