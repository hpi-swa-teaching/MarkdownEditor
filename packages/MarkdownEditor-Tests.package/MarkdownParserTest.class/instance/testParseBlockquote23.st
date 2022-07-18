tests - blockquote
testParseBlockquote23

	| output blockquote document paragraph str |
	output := parser parse: '>    not code'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: '   not code';
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'not code' startingAt: 6.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 13;
		innerLine: nil;
		innerStartPosition: 6;
		content: 'not code';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
		
	self assert: document equals: output