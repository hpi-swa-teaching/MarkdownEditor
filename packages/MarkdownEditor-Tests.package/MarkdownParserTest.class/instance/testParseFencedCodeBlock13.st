tests - fencedCodeBlocks
testParseFencedCodeBlock13

	| output blockquote fencedCodeBlock document paragraph str str2 |
	output := parser parse: '> ```', Character cr, '> aaa', Character cr, Character cr, 'bbb'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 16;
		children: (OrderedCollection newFrom: {blockquote. paragraph}).
	blockquote 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 12;
		innerLine: '```', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'aaa', Character cr startingAt: 7.
	fencedCodeBlock 
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 12;
		innerLine: Character cr asString;
		innerStartPosition: 7;
		content: 'aaa', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '```'.
	str2 := MarkdownString newFrom: 'bbb' startingAt: 14.
	paragraph 
		beClosed;
		container: document;
		startPosition: 14;
		endPosition: 16;
		innerLine: nil;
		innerStartPosition: 14;
		content: 'bbb';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output