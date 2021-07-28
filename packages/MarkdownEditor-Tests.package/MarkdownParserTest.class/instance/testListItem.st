tests - lists
testListItem

	| document list output blockquote listItem paragraph paragraph2 |
	output := parser parse: '1.  A paragraph', Character cr, '    with two lines.', Character cr, Character cr, '    > A block quote.'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	blockquote := MarkdownBlockquote new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 57;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 57;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 4;
		listMarker: '.';
		startNumber: 1;
		beOrdered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 57;
		innerLine: 'A paragraph', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph. blockquote});
		number: 1;
		beOrdered;
		listMarker: '.';
		indentation: 4.
	paragraph 
		container: listItem;
		startPosition: 5;
		endPosition: 36;
		innerStartPosition: 5;
		beClosed;
		content: 'A paragraph', Character cr, 'with two lines.';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'A paragraph', Character cr, 'with two lines.' startingAt: 5}).
	blockquote 
		container: listItem;
		startPosition: 42;
		endPosition: 57;
		innerStartPosition: 44;
		innerLine: 'A block quote.';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph2}).
	paragraph2 
		container: blockquote;
		startPosition: 44;
		endPosition: 57;
		innerStartPosition: 44;
		beClosed;
		content: 'A block quote.';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'A block quote.' startingAt: 44}).
			
	self assert: document equals: output