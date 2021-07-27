tests - thematic break
testThematicBreak11

	| output document break list list2 element element2 paragraph paragraph2 str str2 |
	output := parser parse: '- foo', Character cr, '***', Character cr, '- bar'.
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
		endPosition: 15;
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
		listMarker: '-';
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
		listMarker: '-';
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
		endPosition: 10;
		innerLine: '';
		innerStartPosition: 11;
		content: ''.
	list2
		beClosed;
		container: document;
		startPosition: 11;
		endPosition: 15;
		innerLine: nil;
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '-';
		children: (OrderedCollection newFrom: {element2}).
	element2
		beClosed;
		container: list;
		startPosition: 11;
		endPosition: 15;
		innerLine: 'bar';
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '-';
		children: (OrderedCollection newFrom: {paragraph2}).
	str2 := MarkdownString newFrom: 'bar' startingAt: 13.
	paragraph2
		beClosed;
		container: document;
		startPosition: 13;
		endPosition: 15;
		innerLine: nil;
		innerStartPosition: 13;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
	
	self assert: document equals: output