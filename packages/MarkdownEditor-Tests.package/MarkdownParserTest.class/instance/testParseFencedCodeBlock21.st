tests - fencedCodeBlocks
testParseFencedCodeBlock21

	| output fencedCodeBlock document str |
	output := parser parse: '````;', Character cr, '````'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 10;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '' startingAt: 7.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 10;
		innerLine: ';', Character cr;
		innerStartPosition: 7;
		content: '';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: ';';
		openingFence: '````'.
		
	self assert: document equals: output