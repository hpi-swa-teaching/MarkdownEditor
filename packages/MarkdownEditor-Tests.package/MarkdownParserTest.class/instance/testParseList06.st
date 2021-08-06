tests - lists
testParseList06

	| output document list listItem paragraph |
	output := parser parse: '  1.  A paragraph
    with two lines.'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 37;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 37;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 6;
		listMarker: '.';
		startNumber: 1;
		beOrdered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 37;
		innerLine: 'A paragraph', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		beOrdered;
		listMarker: '.';
		number: 1;
		indentation: 6.
	paragraph 
		container: listItem;
		startPosition: 7;
		endPosition: 37;
		innerStartPosition: 7;
		beClosed;
		content: 'A paragraph', Character cr, 'with two lines.';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'A paragraph', Character cr, 'with two lines.' startingAt: 7}).
			
	self assert: document equals: output