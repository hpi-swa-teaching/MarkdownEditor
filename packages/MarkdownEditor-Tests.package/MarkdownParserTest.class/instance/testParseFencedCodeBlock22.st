tests - fencedCodeBlock
testParseFencedCodeBlock22

	| output fencedCodeBlock document str |
	output := parser parse: '~~~ aa ``` ~~~', Character cr, 'foo', Character cr, '~~~'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 22;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'foo', Character cr startingAt: 16.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 22;
		innerLine: ' aa ``` ~~~', Character cr;
		innerStartPosition: 16;
		content: 'foo', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: 'aa';
		openingFence: '~~~'.
		
	self assert: document equals: output