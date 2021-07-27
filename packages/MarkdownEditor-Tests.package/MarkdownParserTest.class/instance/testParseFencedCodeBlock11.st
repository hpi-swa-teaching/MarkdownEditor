tests - fencedCodeBlocks
testParseFencedCodeBlock11

	| output fencedCodeBlock document str |
	output := parser parse: '```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 3;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '' startingAt: 4.
	fencedCodeBlock
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 3;
		innerLine: '';
		innerStartPosition: 4;
		content: '';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '```'.
		
	self assert: document equals: output