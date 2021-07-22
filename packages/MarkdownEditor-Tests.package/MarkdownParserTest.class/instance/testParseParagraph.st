as yet unclassified
testParseParagraph

	| output document paragraph str |
	output := parser parse: ' hello world', Character cr.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'hello world'.
	str startPosition: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: nil;
		innerStartPosition: 1;
		content: ' hello world', Character cr;
		inlines: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output