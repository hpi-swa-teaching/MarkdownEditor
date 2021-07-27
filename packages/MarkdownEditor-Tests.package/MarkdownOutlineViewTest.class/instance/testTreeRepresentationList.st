tests - treeRepresentation
testTreeRepresentationList

	| expected expected2 list inline listItem paragraph |
	inline := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'hello' startingAt: 3}.
	paragraph := MarkdownParagraph new
		startPosition: 4;
		endPosition: 8;
		innerLine: nil;
		inlineElements: (MarkdownLinkedList newFrom: {inline}).
	list := MarkdownList new.
	listItem := MarkdownListItem new
		container: list;
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
	expected2 := OrderedCollection newFrom: 
		{'marker', String tab, '.'. 
		'level', String tab, '1'.
		'start', String tab, '1'.
		'end', String tab, '8'.
		paragraph}.
	
	self assert: expected equals: list treeRepresentation asOrderedCollection.
	self assert: expected2 equals: listItem treeRepresentation asOrderedCollection