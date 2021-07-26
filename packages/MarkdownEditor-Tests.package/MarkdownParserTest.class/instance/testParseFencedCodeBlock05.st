tests - fencedCodeBlocks
testParseFencedCodeBlock05

	| output fencedCodeBlock document str |
	output := parser parse: '~~~', Character cr, '<', Character cr, ' >', Character cr,'~~~'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 12;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '<', Character cr, ' >'.
	str startPosition: 1.
	fencedCodeBlock beClosed;
		container: document;
		startPosition: 1;
		endPosition: 12;
		innerLine: Character cr asString;
		innerStartPosition: 5;
		content: '<', Character cr, ' >';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '~~~'.
	self assert: document equals: output