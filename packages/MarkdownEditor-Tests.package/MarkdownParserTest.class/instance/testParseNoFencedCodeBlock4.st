tests - fencedCodeBlock
testParseNoFencedCodeBlock4

	| output  document paragraph inlineCode str |
	output := parser parse: '``` aa ```', Character cr, 'foo'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 14;
		children: (OrderedCollection newFrom: {paragraph}).
	inlineCode := MarkdownCodeSpan new
		content: 'aa';
		rawContent: ' aa ';
		fenceLength: 3;
		startPosition: 1.
	str := MarkdownString newFrom: Character cr asString, 'foo' startingAt: 11.
	paragraph 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 14;
		innerLine: nil;
		innerStartPosition: 1;
		content: '``` aa ```', Character cr, 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {inlineCode. str}).
		
	self assert: document equals: output