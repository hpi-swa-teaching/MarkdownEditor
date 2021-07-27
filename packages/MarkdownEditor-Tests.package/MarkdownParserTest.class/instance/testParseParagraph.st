tests - paragraph
testParseParagraph

	| output document paragraph str |
	output := parser parse: ' hello world', Character cr.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'hello world' startingAt: 2.
	paragraph
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: nil;
		innerStartPosition: 2;
		content: 'hello world';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output