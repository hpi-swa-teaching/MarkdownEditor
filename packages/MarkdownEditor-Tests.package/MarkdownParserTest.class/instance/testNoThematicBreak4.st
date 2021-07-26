tests - thematic break
testNoThematicBreak4

	| output document paragraph str |
	output := parser parse: 'Foo', Character cr, '    ***'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'Foo', Character cr, '***' startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 11;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'Foo', Character cr, '***';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output