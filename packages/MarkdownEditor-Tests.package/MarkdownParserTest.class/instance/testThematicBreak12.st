tests - thematic break
testThematicBreak12

	| output document break list list2 element element2 paragraph paragraph2 str str2 |
	output := parser parse: '* foo', Character cr, '* * *', Character cr, '* bar'.
	break := MarkdownThematicBreak new.
	list := MarkdownList new.
	list2 := MarkdownList new.
	element := MarkdownListItem new.
	element2 := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 17;
		children: (OrderedCollection newFrom: {list. break. list2}).
	list
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '*';
		children: (OrderedCollection newFrom: {element}).
	element
		beClosed;
		container: list;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'foo', Character cr;
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '*';
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo' startingAt: 3.
	paragraph
		beClosed;
		container: document;
		startPosition: 3;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	break
		beClosed;
		container: document;
		startPosition: 7;
		endPosition: 12;
		innerLine: '';
		innerStartPosition: 13;
		content: ''.
	list2
		beClosed;
		container: document;
		startPosition: 13;
		endPosition: 17;
		innerLine: nil;
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '-';
		children: (OrderedCollection newFrom: {element2}).
	element2
		beClosed;
		container: list;
		startPosition: 13;
		endPosition: 17;
		innerLine: 'bar';
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '*';
		children: (OrderedCollection newFrom: {paragraph2}).
	str2 := MarkdownString newFrom: 'bar' startingAt: 15.
	paragraph2
		beClosed;
		container: document;
		startPosition: 15;
		endPosition: 17;
		innerLine: nil;
		innerStartPosition: 15;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
	
	self assert: document equals: output