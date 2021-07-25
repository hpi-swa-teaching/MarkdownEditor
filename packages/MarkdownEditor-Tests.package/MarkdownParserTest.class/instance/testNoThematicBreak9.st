tests - thematic break
testNoThematicBreak9

	| output document paragraph emph str |
	output := parser parse: ' *-*'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 4;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '-' startingAt: 2.
	emph := MarkdownItalic new.
	emph startPosition: 1.
	emph children: (MarkdownLinkedList newFrom: {str}).
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 4;
		innerLine: nil;
		innerStartPosition: 2;
		content: '*-*';
		inlines: (MarkdownLinkedList newFrom: {emph}).
	self assert: document equals: output