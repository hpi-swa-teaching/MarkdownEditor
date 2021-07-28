tests - fencedCodeBlock
testParseFencedCodeBlockWithIndentation4

	| output fencedCodeBlock document str |
	output := parser parse: '  ```', Character cr, 'aaa', Character cr, '  aaa' , Character cr, 'aaa', Character cr, '  ```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 25;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'aaa', Character cr, 'aaa' , Character cr, 'aaa', Character cr startingAt: 5.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 25;
		innerLine: Character cr asString;
		innerStartPosition: 5;
		content: 'aaa', Character cr, 'aaa' , Character cr, 'aaa', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 2;
		info: '';
		openingFence: '```'.
		
	self assert: document equals: output