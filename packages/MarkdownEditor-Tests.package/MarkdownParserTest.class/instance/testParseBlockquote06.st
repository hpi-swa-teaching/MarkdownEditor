tests - blockquote
testParseBlockquote06

	| output blockquote document paragraph str break |
	output := parser parse: '> foo', Character cr, '---'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 9;
		children: (OrderedCollection newFrom: {blockquote. break}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'foo', Character cr asString;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo' startingAt: 3.
	paragraph
		beClosed;
		container: document;
		startPosition: 3;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	break
		beClosed;
		container: document;
		startPosition: 7;
		endPosition: 9;
		innerLine: '';
		innerStartPosition: 10;
		content: ''.
		
	self assert: document equals: output