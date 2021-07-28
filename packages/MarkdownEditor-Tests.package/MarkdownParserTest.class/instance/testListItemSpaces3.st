tests - lists
testListItemSpaces3
"i dont get why this is failing"
	| document list output blockquote listItem paragraph paragraph2 blockquote2 |
	output := parser parse: '   > > 1.  one', Character cr, '>>', Character cr, '>>     two'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	blockquote := MarkdownBlockquote new.
	blockquote2 := MarkdownBlockquote new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 28;
		beClosed;
		children: (OrderedCollection newFrom: {blockquote});
		yourself.
	blockquote 
		container: document;
		startPosition: 1;
		endPosition: 28;
		innerStartPosition: 6;
		innerLine: '> 1. one', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {blockquote2}).
	blockquote2 
		container: blockquote;
		startPosition: 6;
		endPosition: 28;
		innerStartPosition: 8;
		innerLine: '1. one', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {list}).	
	list 
		container: document;
		startPosition: 8;
		endPosition: 28;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 4;
		listMarker: '.';
		startNumber: 1;
		beOrdered.
	listItem 
		container: list;
		startPosition: 8;
		endPosition: 28;
		innerLine: 'one', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph. paragraph2});
		beOrdered;
		listMarker: '.';
		indentation: 4.
	paragraph 
		container: listItem;
		startPosition: 12;
		endPosition: 18;
		innerStartPosition: 12;
		beClosed;
		content: 'one';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'one' startingAt: 12}).
	paragraph2 
		container: listItem;
		startPosition: 26;
		endPosition: 28;
		innerStartPosition: 26;
		beClosed;
		content: 'two';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'two' startingAt: 26}).
	
	self assert: document equals: output