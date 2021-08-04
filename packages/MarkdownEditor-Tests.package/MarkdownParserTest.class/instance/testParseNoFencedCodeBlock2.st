tests - fencedCodeBlock
testParseNoFencedCodeBlock2

	| output  document paragraph inlineCode |
	output := parser parse: '    ```', Character cr, '    aaa', Character cr, '    ```'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 23;
		children: (OrderedCollection newFrom: {paragraph}).
	inlineCode := MarkdownCodeSpan new
		code: 'aaa';
		rawContent: Character cr asString, 'aaa', Character cr;
		fenceLength: 3;
		startPosition: 5.
	paragraph 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 23;
		innerLine: nil;
		innerStartPosition: 5;
		content: '```', Character cr, 'aaa', Character cr, '```';
		inlineElements: (MarkdownLinkedList newFrom: {inlineCode}).
		
	self assert: document equals: output