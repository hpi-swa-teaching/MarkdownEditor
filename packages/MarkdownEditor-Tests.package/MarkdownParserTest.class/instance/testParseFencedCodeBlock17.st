tests - fencedCodeBlock
testParseFencedCodeBlock17

	| output fencedCodeBlock paragraph paragraph2 document str str2 str3 |
	output := parser parse: 'foo', Character cr, '```', Character cr, 'bar', Character cr, '```', Character cr, 'baz'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 19;
		children: (OrderedCollection newFrom: {paragraph. fencedCodeBlock. paragraph2}).
	str := MarkdownString newFrom: 'foo' startingAt: 1.
	paragraph 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 4;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	str2 := MarkdownString newFrom: 'bar', Character cr startingAt: 9.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 5;
		endPosition: 16;
		innerLine: Character cr asString;
		innerStartPosition: 9;
		content: 'bar', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str2});
		indentation: 0;
		info: '';
		openingFence: '```'.
	str3 := MarkdownString newFrom: 'baz' startingAt: 17.
	paragraph2
		beClosed;
		container: document;
		startPosition: 17;
		endPosition: 19;
		innerLine: nil;
		innerStartPosition: 17;
		content: 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str3}).
		
	self assert: document equals: output