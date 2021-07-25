tests - thematic break
testThematicBreak13

	| output document break list element paragraph str |
	output := parser parse: '- foo', Character cr, '* * *'.
	break := MarkdownThematicBreak new.
	list := MarkdownList new.
	element := MarkdownListItem new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {list. break}).
	list beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '-';
		children: (OrderedCollection newFrom: {element}).
	element beClosed;
		container: list;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'foo', Character cr;
		innerStartPosition: nil;
		indentation: 2;
		isOrdered: false;
		listMarker: '-';
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo', Character cr startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 3;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'foo', Character cr;
		inlines: (MarkdownLinkedList newFrom: {str}).
	break beClosed;
		container: document;
		startPosition: 7;
		endPosition: 11;
		innerLine: '';
		innerStartPosition: 12;
		content: ''.
	self assert: document equals: output