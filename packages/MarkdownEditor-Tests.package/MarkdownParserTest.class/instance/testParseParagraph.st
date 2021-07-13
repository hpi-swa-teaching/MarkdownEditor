as yet unclassified
testParseParagraph

	| output document paragraph |
	output := parser parse: ' hello world', Character cr.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 0;
		endPosition: 13;
		children: (OrderedCollection newFrom: {paragraph}).
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: nil;
		content: ' hello world', Character cr;
		inlines: (MarkdownLinkedList newFrom: {MarkdownString newFrom: 'hello world'}).
	self assert: document equals: output