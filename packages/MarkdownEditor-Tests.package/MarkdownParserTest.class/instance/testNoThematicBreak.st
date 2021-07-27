tests - thematic break
testNoThematicBreak

	| output document paragraph str |
	output := parser parse: '+++'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '+++' startingAt: 1.
	paragraph
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 3;
		innerLine: nil;
		innerStartPosition: 1;
		content: '+++';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	
	self assert: document equals: output