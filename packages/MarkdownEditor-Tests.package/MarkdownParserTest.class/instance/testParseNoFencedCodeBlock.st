tests - fencedCodeBlock
testParseNoFencedCodeBlock

	| output  document paragraph inlineCode |
	output := parser parse: '``', Character cr, 'foo', Character cr, '``'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 9;
		children: (OrderedCollection newFrom: {paragraph}).
	inlineCode := MarkdownCodeSpan new
		code: 'foo';
		rawContent: (Character cr asString, 'foo', Character cr);
		fenceLength: 2;
		startPosition: 1.
	paragraph 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 9;
		innerLine: nil;
		innerStartPosition: 1;
		content: '``', Character cr, 'foo', Character cr, '``';
		inlineElements: (MarkdownLinkedList newFrom: {inlineCode}).
		
	self assert: document equals: output