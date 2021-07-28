tests - lists
testNoList

	| document output paragraph paragraph2 |
	output := parser parse: '-one', Character cr, Character cr, '2.two'.
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
		endPosition: 5;
		innerStartPosition: 1;
		beClosed;
		content: '-one';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: '-one' startingAt: 1}).
	paragraph2 
		container: document;
		startPosition: 7;
		endPosition: 11;
		innerStartPosition: 7;
		beClosed;
		content: '2.two';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: '2.two' startingAt: 7}).
	
	self assert: document equals: output