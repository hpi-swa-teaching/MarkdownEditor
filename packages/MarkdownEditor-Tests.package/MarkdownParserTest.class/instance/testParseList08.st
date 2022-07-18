tests - lists
testParseList08

	| output document list listItem paragraph blockquote blockquote2 |
	output := parser parse: '> 1. > Blockquote
> continued here.'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	blockquote := MarkdownBlockquote new.
	blockquote2 := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 35;
		beClosed;
		children: (OrderedCollection newFrom: {blockquote});
		yourself.
	blockquote
		startPosition: 1;
		endPosition: 35;
		beClosed;
		innerStartPosition: 3;
		innerLine: '1. > Blockquote', Character cr;
		children: (OrderedCollection newFrom: {list}).
	list 
		container: blockquote;
		startPosition: 3;
		endPosition: 35;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 3;
		listMarker: '.';
		startNumber: 1;
		beOrdered.
	listItem 
		container: list;
		startPosition: 3;
		endPosition: 35;
		innerLine: '> Blockquote', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {blockquote2});
		beOrdered;
		listMarker: '.';
		number: 1;
		indentation: 3.
	blockquote2
		container: listItem;
		startPosition: 6;
		endPosition: 35;
		innerStartPosition: 8;
		beClosed;
		innerLine: 'Blockquote', Character cr;
		children: (OrderedCollection newFrom: {paragraph}).
	paragraph 
		container: blockquote2;
		startPosition: 8;
		endPosition: 35;
		innerStartPosition: 8;
		beClosed;
		content: 'Blockquote', Character cr, 'continued here.';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'Blockquote', Character cr, 'continued here.' startingAt: 8}).
			
	self assert: document equals: output