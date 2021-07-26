tests - fencedCodeBlocks
testParseFencedCodeBlock

	| output fencedCodeBlock document str |
	output := parser parse: '```', Character cr, 'some code', Character cr,'```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 17;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'some code', Character cr.
	str startPosition: 1.
	fencedCodeBlock beClosed;
		container: document;
		startPosition: 1;
		endPosition: 17;
		innerLine: Character cr asString;
		innerStartPosition: 5;
		content: 'some code', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '```'.
	self assert: document equals: output