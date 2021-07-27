tests - fencedCodeBlocks
testParseFencedCodeBlock10

	| output fencedCodeBlock document str |
	output := parser parse: '````', Character cr, 'aaa', Character cr, '```', Character cr, '````'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 17;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'aaa', Character cr, '```', Character cr startingAt: 6.
	fencedCodeBlock beClosed;
		container: document;
		startPosition: 1;
		endPosition: 17;
		innerLine: Character cr asString;
		innerStartPosition: 6;
		content: 'aaa', Character cr, '```', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '````'.
	self assert: document equals: output