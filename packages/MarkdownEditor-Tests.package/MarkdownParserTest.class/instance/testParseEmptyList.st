tests - lists
testParseEmptyList

	| output document list listItem |
	output := parser parse: '*'.
	list := MarkdownList new.
	listItem := MarkdownListItem new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 1;
		beClosed;
		children: (OrderedCollection newFrom: {list});
		yourself.
	list 
		container: document;
		startPosition: 1;
		endPosition: 1;
		beClosed;
		children: (OrderedCollection newFrom: {listItem});
		indentation: 2;
		listMarker: '*';
		beUnordered.
	listItem 
		container: list;
		startPosition: 1;
		endPosition: 1;
		innerLine: '';
		beClosed;
		beUnordered;
		listMarker: '*';
		indentation: 2.

	self assert: document equals: output