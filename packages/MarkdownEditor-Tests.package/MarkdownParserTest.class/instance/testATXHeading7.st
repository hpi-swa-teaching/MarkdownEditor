tests - ATXHeading
testATXHeading7

	| output document heading break break2 str |
	output := parser parse: '****', Character cr, '## foo', Character cr, '****'.
	heading := MarkdownATXHeading new.
	break := MarkdownThematicBreak new.
	break2 := MarkdownThematicBreak new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 16;
		children: (OrderedCollection newFrom: {break. heading. break2}).
	break beClosed;
		container: document;
		startPosition: 1;
		endPosition: 5;
		innerLine: '';
		innerStartPosition: 6.
	str := MarkdownString newFrom: 'foo' startingAt: 1.
	heading beClosed;
		container: document;
		startPosition: 6;
		endPosition: 12;
		innerLine: '';
		innerStartPosition: 9;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 2.
	break2 beClosed;
		container: document;
		startPosition: 13;
		endPosition: 16;
		innerLine: '';
		innerStartPosition: 17.
	self assert: document equals: output