tests - fencedCodeBlocks
testParseFencedCodeBlock03

	| output fencedCodeBlock document str |
	output := parser parse: '```smalltalk this', Character cr, 'some code', Character cr,'```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 31;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'some code', Character cr startingAt: 19.
	fencedCodeBlock beClosed;
		container: document;
		startPosition: 1;
		endPosition: 31;
		innerLine: 'smalltalk this', Character cr;
		innerStartPosition: 19;
		content: 'some code', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: 'smalltalk';
		openingFence: '```'.
	self assert: document equals: output