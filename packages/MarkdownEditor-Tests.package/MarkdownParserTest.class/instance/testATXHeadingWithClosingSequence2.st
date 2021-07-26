tests - ATXHeading
testATXHeadingWithClosingSequence2

	| output document heading heading2 str str2 |
	output := parser parse: '# foo ##################################', 
							Character cr, '##### bar ##'.
	heading := MarkdownATXHeading new.
	heading2 := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 53;
		children: (OrderedCollection newFrom: {heading. heading2}).
	str := MarkdownString newFrom: 'foo' startingAt: 1.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 41;
		innerLine: '';
		innerStartPosition: 3;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 1.
	str2 := MarkdownString newFrom: 'bar' startingAt: 1.
	heading2 beClosed;
		container: document;
		startPosition: 42;
		endPosition: 53;
		innerLine: '';
		innerStartPosition: 48;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2});
		level: 5.
	self assert: document equals: output