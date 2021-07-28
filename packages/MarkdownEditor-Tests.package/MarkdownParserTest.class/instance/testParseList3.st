tests - lists
testParseList3

	| output document list listItem paragraph |
	output := parser parse: '-   
  foo'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 10;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 10;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 2;
		listMarker: '-';
		beUnordered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 10;
		innerLine: '', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		beUnordered;
		listMarker: '-';
		indentation: 2.
	paragraph 
		container: listItem;
		startPosition: 8;
		endPosition: 10;
		innerStartPosition: 8;
		beClosed;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo' startingAt: 8}).
			
	self assert: document equals: output