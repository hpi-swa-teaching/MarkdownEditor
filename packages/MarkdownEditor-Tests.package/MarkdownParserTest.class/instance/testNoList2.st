tests - lists
testNoList2

	| document output paragraph paragraph2 |
	output := parser parse: '   one', Character cr, Character cr, 'two'.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 11;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph. paragraph2});
		yourself.
	paragraph 
		container: document;
		startPosition: 1;
		endPosition: 7;
		innerStartPosition: 4;
		beClosed;
		content: 'one';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'one' startingAt: 4}).
	paragraph2 
		container: document;
		startPosition: 9;
		endPosition: 11;
		innerStartPosition: 9;
		beClosed;
		content: 'two';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'two' startingAt: 9}).
	
	self assert: document equals: output