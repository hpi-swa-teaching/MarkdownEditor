tests - lists
testParseList09

	| output document list listItem paragraph listItem2 listItem3 paragraph2 paragraph3 paragraph4 listItem4 |
	output := parser parse: '- foo
 - bar
  - baz
   - boo'.
	list := MarkdownList new.
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
		endPosition: 29;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 29;
		beClosed;
		children: (OrderedCollection newFrom: {listItem. listItem2. listItem3. listItem4});
		indentation: 5;
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
		content: 'foo';
		beClosed;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo' startingAt: 3}).
	listItem2
		container: list;
		startPosition: 7;
		endPosition: 13;
		innerLine: 'bar', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph2});
		beUnordered;
		listMarker: '-';
		indentation: 3.
	paragraph2
		container: listItem2;
		startPosition: 10;
		endPosition: 13;
		innerStartPosition: 10;
		content: 'bar';
		beClosed;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar' startingAt: 10}).
	listItem3
		container: list;
		startPosition: 14;
		endPosition: 21;
		innerLine: 'baz', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3});
		beUnordered;
		listMarker: '-';
		indentation: 4.
	paragraph3
		container: listItem3;
		startPosition: 18;
		endPosition: 21;
		innerStartPosition: 18;
		content: 'baz';
		beClosed;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'baz' startingAt: 18}).
	listItem4
		container: list;
		startPosition: 22;
		endPosition: 29;
		innerLine: 'boo';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph4});
		beUnordered;
		listMarker: '-';
		indentation: 5.
	paragraph4
		container: listItem4;
		startPosition: 27;
		endPosition: 29;
		innerStartPosition: 27;
		content: 'boo';
		beClosed;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'boo' startingAt: 27}).
			
	self assert: document equals: output