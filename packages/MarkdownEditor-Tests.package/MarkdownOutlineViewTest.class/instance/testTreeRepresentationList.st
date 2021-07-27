tests - treeRepresentation
testTreeRepresentationList

	| expected list inline listItem paragraph |
	inline := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'hello' startingAt: 3}.
	paragraph := MarkdownParagraph new
		startPosition: 4;
		endPosition: 8;
		innerLine: nil;
		inlineElements: (MarkdownLinkedList newFrom: {inline}).
	list := MarkdownList new.
	listItem := MarkdownListItem new
		startPosition: 1;
		endPosition: 8;
		isOrdered: true;
		listMarker: '.';
		children: (OrderedCollection newFrom: {paragraph})
		yourself.
	
	list	startPosition: 1;
		endPosition: 8;
		indentation: 3;
		listMarker: '.';
		isOrdered: true;
		children: (OrderedCollection newFrom: {listItem})
		yourself.
			
	expected := OrderedCollection newFrom: 
		{'ordered', String tab, 'true'. 
		'start', String tab, '1'.
		'end', String tab, '8'.
		listItem}.
	self assert: expected equals: list treeRepresentation asOrderedCollection