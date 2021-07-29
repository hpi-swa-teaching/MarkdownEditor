tests - treeRepresentation
testTreeRepresentationHeading

	| heading expected inline |
	inline := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'hello' startingAt: 1}.
	heading := MarkdownATXHeading new
		startPosition: 1;
		endPosition: 7;
		level: 2;
		yourself.
	heading inlineElements add: inline.
	
	expected := OrderedCollection newFrom: 
		{'level', String tab, '2'. 
		'start', String tab, '1'.
		'end', String tab, '7'.
		inline}.
		
	self assert: expected equals: heading treeRepresentation asOrderedCollection