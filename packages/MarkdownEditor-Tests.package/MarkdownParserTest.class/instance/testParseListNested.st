tests - lists
testParseListNested

	| output document list listItem paragraph list2 list3 list4 listItem2 listItem3 listItem4 paragraph2 paragraph3 paragraph4 |
	output := parser parse: '- foo
  - bar
    - baz
      - boo'.
	list := MarkdownList new.
	list2 := MarkdownList new.
	list3 := MarkdownList new.
	list4 := MarkdownList new.
	listItem := MarkdownListItem new.
	listItem2 := MarkdownListItem new.
	listItem3 := MarkdownListItem new.
	listItem4 := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	paragraph3 := MarkdownParagraph new.
	paragraph4 := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 35;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 35;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 2;
		beUnordered;
		listMarker: '-';
		indentation: 2.
	listItem
		container: list;
		startPosition: 1;
		endPosition: 35;
		innerLine: 'foo', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph. list2});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	paragraph
		container: listItem;
		startPosition: 3;
		endPosition: 8;
		innerStartPosition: 3;
		beClosed;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo' startingAt: 3}).
	list2
		container: listItem;
		startPosition: 9;
		endPosition: 35;
		beClosed;
		children: (OrderedCollection newFrom: {listItem2});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem2
		container: list2;
		startPosition: 9;
		endPosition: 35;
		innerLine: 'bar', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph2. list3});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph2
		container: listItem2;
		startPosition: 11;
		endPosition: 18;
		innerStartPosition: 11;
		beClosed;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar' startingAt: 11}).
	list3
		container: listItem2;
		startPosition: 19;
		endPosition: 35;
		beClosed;
		children: (OrderedCollection newFrom: {listItem3});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem3
		container: list3;
		startPosition: 19;
		endPosition: 35;
		innerLine: 'baz', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3. list4});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph3
		container: listItem3;
		startPosition: 21;
		endPosition: 30;
		innerStartPosition: 21;
		beClosed;
		content: 'baz';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'baz' startingAt: 21}).
	list4
		container: listItem3;
		startPosition: 31;
		endPosition: 35;
		beClosed;
		children: (OrderedCollection newFrom: {listItem4});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem4
		container: list4;
		startPosition: 31;
		endPosition: 35;
		innerLine: 'boo';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph4});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph4
		container: listItem4;
		startPosition: 33;
		endPosition: 35;
		innerStartPosition: 33;
		beClosed;
		content: 'boo';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'boo' startingAt: 33}).
			
	self assert: document equals: output