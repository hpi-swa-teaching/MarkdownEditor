helper
configureSampleDocument

	| paragraph document |
	document := MarkdownDocument new
		startPosition: 1;
		endPosition: 5;
		beClosed;
		yourself.
	paragraph := MarkdownParagraph new
		startPosition: 1;
		endPosition: 5;
		inlineElements: (MarkdownLinkedList newFrom: 
			{MarkdownString newFrom: 'hello' startingAt: 1});
		innerStartPosition: 1;
		container: document;
		content: 'hello';
		beClosed;
		yourself.
	document children add: paragraph.
	^ document