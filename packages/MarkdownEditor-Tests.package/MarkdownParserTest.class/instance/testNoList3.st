tests - lists
testNoList3

	| document output paragraph paragraph2 |
	output := parser parse: 'foo
*

foo
1.'.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 13;
		beClosed;
		children: (OrderedCollection newFrom: {paragraph. paragraph2});
		yourself.
	paragraph 
		container: document;
		startPosition: 1;
		endPosition: 7;
		innerStartPosition: 1;
		beClosed;
		content: 'foo', Character cr, '*', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo', Character cr, '*', Character cr startingAt: 1}).
	paragraph2 
		container: document;
		startPosition: 8;
		endPosition: 13;
		innerStartPosition: 8;
		beClosed;
		content: 'foo', Character cr, '1.';
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'foo', Character cr, '1.' startingAt: 8}).
	
	self assert: document equals: output