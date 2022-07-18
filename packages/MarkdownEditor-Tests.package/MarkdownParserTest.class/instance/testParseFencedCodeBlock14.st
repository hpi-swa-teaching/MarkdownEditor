tests - fencedCodeBlock
testParseFencedCodeBlock14

	| output fencedCodeBlock document str |
	output := parser parse: '```', Character cr, Character cr, '  ', Character cr, '```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: Character cr asString, '  ', Character cr startingAt: 5.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 11;
		innerLine: Character cr asString;
		innerStartPosition: 5;
		content: Character cr asString, '  ', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '```'.
		
	self assert: document equals: output