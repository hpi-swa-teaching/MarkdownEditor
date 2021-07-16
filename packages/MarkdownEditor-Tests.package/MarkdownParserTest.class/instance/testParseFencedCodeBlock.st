as yet unclassified
testParseFencedCodeBlock

	| output fencedCodeBlock document |
	output := parser parse: '```', Character cr, 'some code', Character cr,'```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 17;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	fencedCodeBlock beClosed;
		container: document;
		startPosition: 1;
		endPosition: 17;
		innerLine: Character cr asString;
		content: 'some code';
		inlines: (MarkdownLinkedList newFrom: {MarkdownString newFrom: 'some code'});
		indention: 0;
		info: '';
		openingFence: '```'.
	self assert: document equals: output