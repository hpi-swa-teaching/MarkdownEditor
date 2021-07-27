tests - fencedCodeBlocks
testParseFencedCodeBlock12

	| output fencedCodeBlock document str |
	output := parser parse: '`````', Character cr, Character cr, '```', Character cr, 'aaa'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 14;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '```', Character cr, 'aaa' startingAt: 7.
	fencedCodeBlock
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 14;
		innerLine: Character cr asString;
		innerStartPosition: 7;
		content: '```', Character cr, 'aaa';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '`````'.
		
	self assert: document equals: output