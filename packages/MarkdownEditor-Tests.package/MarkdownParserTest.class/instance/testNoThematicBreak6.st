tests - thematic break
testNoThematicBreak6

	| output document paragraph str |
	output := parser parse: '_ _ _ _ a'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 9;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '_ _ _ _ a' startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 9;
		innerLine: nil;
		innerStartPosition: 1;
		content: '_ _ _ _ a';
		inlines: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output