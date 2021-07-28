tests - lists
testParseList

	| output document list list2 listItem paragraph listItem2 listItem3 paragraph2 paragraph3 |
	output := parser parse: '- foo
- bar
+ baz'.
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
		endPosition: 17;
		beClosed;
		children: (OrderedCollection newFrom: {list. list2});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 12;
		beClosed;
		children: (OrderedCollection newFrom: {listItem. listItem2});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'foo';
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
		endPosition: 12;
		innerLine: 'bar';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph2});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph2
		container: listItem;
		startPosition: 9;
		endPosition: 12;
		innerStartPosition: 9;
		beClosed;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar' startingAt: 9}).
	list2
		container: document;
		startPosition: 13;
		endPosition: 17;
		beClosed;
		children: (OrderedCollection newFrom: {listItem3});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem 
		container: list2;
		startPosition: 13;
		endPosition: 17;
		innerLine: 'baz';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph 
		container: listItem;
		startPosition: 15;
		endPosition: 17;
		innerStartPosition: 15;
		beClosed;
		content: 'baz';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'baz' startingAt: 15}).