as yet unclassified
testParseFencedCodeBlock2

	| output fencedCodeBlock document |
	output := parser parse: '```smalltalk', Character cr, 'some code', Character cr,'```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 0;
		endPosition: 26;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	fencedCodeBlock beClosed;
		container: document;
		startPosition: 1;
		endPosition: 26;
		innerLine: 'smalltalk';
		content: 'smalltalk', Character cr, 'some code', Character cr;
		inlines: (MarkdownLinkedList newFrom: {MarkdownString newFrom: 'some code'});
		indention: 0;
		info: 'smalltalk';
		openingFence: '```'.
	self assert: document equals: output