tests - fencedCodeBlocks
testParseFencedCodeBlock18

	| output fencedCodeBlock heading heading2 document str str2 str3 |
	output := parser parse: '# foo', Character cr, '~~~', Character cr, 'bar', Character cr, '~~~', Character cr, '# baz'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	heading := MarkdownATXHeading new.
	heading2 := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 23;
		children: (OrderedCollection newFrom: {heading. fencedCodeBlock. heading2}).
	str := MarkdownString newFrom: 'foo' startingAt: 3. 
	heading
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: '';
		innerStartPosition: 3;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 1.
	str2 := MarkdownString newFrom: 'bar', Character cr startingAt: 11.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 7;
		endPosition: 18;
		innerLine: Character cr asString;
		innerStartPosition: 11;
		content: 'bar', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str2});
		indentation: 0;
		info: '';
		openingFence: '~~~'.
	str3 := MarkdownString newFrom: 'baz' startingAt: 21.
	heading2
		beClosed;
		container: document;
		startPosition: 19;
		endPosition: 23;
		innerLine: '';
		innerStartPosition: 21;
		content: 'baz';
		inlineElements: (MarkdownLinkedList newFrom: {str3});
		level: 1.
		
	self assert: document equals: output