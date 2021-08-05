tests - lists
testParseList02

	| output document list listItem paragraph listItem2 listItem3 paragraph3 code |
	output := parser parse: '-
  foo
-
  ```
  bar
  ```
-
      baz'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	listItem2 := MarkdownListItem new.
	listItem3 := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph3 := MarkdownParagraph new.
	code := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 39;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 39;
		beClosed;
		children: (OrderedCollection newFrom: {listItem. listItem2. listItem3});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 8;
		innerLine: '';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph 
		container: listItem;
		startPosition: 5;
		endPosition: 8;
		innerStartPosition: 5;
		beClosed;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo' startingAt: 5}).
	listItem2 
		container: list;
		startPosition: 9;
		endPosition: 28;
		innerLine: '';
		beClosed;
		children: (OrderedCollection newFrom: {code});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	code
		container: listItem2;
		startPosition: 13;
		endPosition: 28;
		innerStartPosition: 17;
		innerLine: '', Character cr;
		beClosed;
		content: 'bar', Character cr;
		indentation: 0;
		info: '';
		openingFence: '```';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'bar', Character cr startingAt: 17}).
	listItem3
		container: list;
		startPosition: 29;
		endPosition: 39;
		innerLine: '';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph3});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph3
		container: listItem3;
		startPosition: 33;
		endPosition: 39;
		innerStartPosition: 37;
		beClosed;
		content: 'baz';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'baz' startingAt: 37}).
			
	self assert: document equals: output