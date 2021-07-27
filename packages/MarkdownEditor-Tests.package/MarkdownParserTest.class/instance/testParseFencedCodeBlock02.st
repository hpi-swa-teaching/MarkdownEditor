tests - fencedCodeBlocks
testParseFencedCodeBlock02

	| output fencedCodeBlock document str |
	output := parser parse: '```smalltalk', Character cr, 'some code', Character cr,'```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 26;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'some code', Character cr startingAt: 14.
	fencedCodeBlock beClosed;
		container: document;
		startPosition: 1;
		endPosition: 26;
		innerLine: 'smalltalk', Character cr;
		innerStartPosition: 14;
		content: 'some code', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: 'smalltalk';
		openingFence: '```'.
	self assert: document equals: output