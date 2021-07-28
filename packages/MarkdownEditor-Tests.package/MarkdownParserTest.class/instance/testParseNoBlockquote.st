tests - blockquote
testParseNoBlockquote

	| output document paragraph str |
	output := parser parse: '    > # foo', Character cr, '    > bar', Character cr, '    > baz'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 31;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '> # foo', Character cr, '> bar', Character cr, '> baz' startingAt: 5.
	paragraph
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 31;
		innerLine: nil;
		innerStartPosition: 5;
		content: '> # foo', Character cr, '> bar', Character cr, '> baz';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output