tests - fencedCodeBlock
testParseFencedCodeBlock24

	| output fencedCodeBlock document str |
	output := parser parse: '```shell', Character cr, Character cr, '  ', Character cr, '```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 16;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '', Character cr, '  ', Character cr startingAt: 10.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 16;
		innerLine: 'shell', Character cr;
		innerStartPosition: 10;
		content: '', Character cr, '  ', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: 'shell';
		openingFence: '```'.
		
	self assert: document equals: output