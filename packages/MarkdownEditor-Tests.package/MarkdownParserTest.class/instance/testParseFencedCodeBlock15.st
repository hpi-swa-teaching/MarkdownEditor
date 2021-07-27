tests - fencedCodeBlocks
testParseFencedCodeBlock15

	| output fencedCodeBlock document str |
	output := parser parse: '```', Character cr, '```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 7;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '' startingAt: 5.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 7;
		innerLine: Character cr asString;
		innerStartPosition: 5;
		content: '';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '```'.
		
	self assert: document equals: output