tests - fencedCodeBlocks
testParseFencedCodeBlockWithHeading

	| output fencedCodeBlock document str |
	output := parser parse: '```', Character cr, '# foo', Character cr, '```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '# foo', Character cr startingAt: 5.
	fencedCodeBlock
		beClosed;
		container: document;
		innerStartPosition: 5;
		innerLine: Character cr asString;
		startPosition: 1;
		endPosition: 13;
		content: '# foo', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '```'.
		
	self assert: document equals: output