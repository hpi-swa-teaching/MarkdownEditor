tests - thematic break
testNoThematicBreak5

	| output document code str |
	output := parser parse: '    ***'.
	code := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 7;
		children: (OrderedCollection newFrom: {code}).
	str := MarkdownString newFrom: '***' startingAt: 1.
	code beClosed;
		container: document;
		startPosition: 1;
		endPosition: 7;
		innerLine: nil;
		innerStartPosition: 5;
		content: '***';
		inlines: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output