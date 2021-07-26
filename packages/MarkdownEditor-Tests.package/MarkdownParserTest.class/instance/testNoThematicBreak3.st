tests - thematic break
testNoThematicBreak3

	| output document paragraph str |
	output := parser parse: '--', Character cr, '**', Character cr, '__'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 8;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '--', Character cr, '**', Character cr, '__' startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 8;
		innerLine: nil;
		innerStartPosition: 1;
		content: '--', Character cr, '**', Character cr, '__';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output