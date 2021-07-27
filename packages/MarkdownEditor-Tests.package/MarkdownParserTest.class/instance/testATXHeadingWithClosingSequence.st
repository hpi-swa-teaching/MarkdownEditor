tests - ATXHeading
testATXHeadingWithClosingSequence

	| output document heading heading2 str str2 |
	output := parser parse: '## foo ##', Character cr, '###   bar    ###'.
	heading := MarkdownATXHeading new.
	heading2 := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 26;
		children: (OrderedCollection newFrom: {heading. heading2}).
	str := MarkdownString newFrom: 'foo' startingAt: 4.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 10;
		innerLine: '';
		innerStartPosition: 4;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 2.
	str2 := MarkdownString newFrom: 'bar' startingAt: 17.
	heading2 beClosed;
		container: document;
		startPosition: 11;
		endPosition: 26;
		innerLine: '';
		innerStartPosition: 17;
		content: 'bar';
		inlineElements: (MarkdownLinkedList newFrom: {str2});
		level: 3.
	self assert: document equals: output