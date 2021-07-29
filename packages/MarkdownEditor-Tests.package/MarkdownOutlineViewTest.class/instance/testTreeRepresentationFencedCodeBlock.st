tests - treeRepresentation
testTreeRepresentationFencedCodeBlock

	| expected fencedCodeBlock str |
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	str := MarkdownString newFrom: 'some code', Character cr startingAt: 14.
	fencedCodeBlock
		startPosition: 1;
		endPosition: 27;
		innerLine: nil;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		info: 'smalltalk'.
	expected := OrderedCollection newFrom: 
		{'info', String tab, 'smalltalk'. 
		'start', String tab, '1'.
		'end', String tab, '27'.
		str}.
		
	self assert: expected equals: fencedCodeBlock treeRepresentation asOrderedCollection