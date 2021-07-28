tests - blockquote
testParseBlockquote07

	| output blockquote document paragraph paragraph2 str str2 break list listItem list2 listItem2 |
	output := parser parse: '> - foo', Character cr, '- bar'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	break := MarkdownThematicBreak new.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	list2 := MarkdownList new.
	listItem2 := MarkdownListItem new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {blockquote. list2}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 8;
		innerLine: '- foo', Character cr asString;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {list}).
	list
		container: document;
		startPosition: 3;
		endPosition: 8;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 2;
		listMarker: '-';
		startNumber: nil;
		beUnordered.
	listItem 
		container: list;
		startPosition: 3;
		endPosition: 8;
		innerLine: 'foo', Character cr;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph});
		number: nil;
		beUnordered;
		listMarker: '-';
		indentation: 2.
	str := MarkdownString newFrom: 'foo' startingAt: 5.
	paragraph
		beClosed;
		container: listItem;
		startPosition: 5;
		endPosition: 8;
		innerLine: nil;
		innerStartPosition: 5;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	list2 container: document;
		startPosition: 9;
		endPosition: 13;
		beClosed;
		children: (OrderedCollection newFrom: {listItem2});
		indentation: 2;
		listMarker: '-';
		startNumber: nil;
		beUnordered.
	listItem2 container: list;
		startPosition: 9;
		endPosition: 13;
		innerLine: 'bar';
		beClosed;
		children: (OrderedCollection newFrom: {paragraph2});
		number: nil;
		beUnordered;
		listMarker: '-';
		indentation: 2.
	str2 := MarkdownString newFrom: 'bar' startingAt: 11.
	paragraph2
		beClosed;
		container: listItem2;
		startPosition: 11;
		endPosition: 13;
		innerLine: nil;
		innerStartPosition: 11;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output