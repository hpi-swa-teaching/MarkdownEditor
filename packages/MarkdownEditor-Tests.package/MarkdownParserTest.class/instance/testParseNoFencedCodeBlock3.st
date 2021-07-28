tests - fencedCodeBlock
testParseNoFencedCodeBlock3

	| output  document paragraph inlineCode str |
	output := parser parse: '``` ```', Character cr, 'aaa'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {paragraph}).
	inlineCode := MarkdownCodeSpan new
		code: ' ';
		rawContent: ' ';
		fenceLength: 3;
		startPosition: 1.
	str := MarkdownString newFrom: Character cr asString, 'aaa' startingAt: 8.
	paragraph 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 11;
		innerLine: nil;
		innerStartPosition: 1;
		content: '``` ```', Character cr, 'aaa';
		inlineElements: (MarkdownLinkedList newFrom: {inlineCode. str}).
		
	self assert: document equals: output