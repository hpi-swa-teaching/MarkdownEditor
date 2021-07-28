tests - blockquote
testParseBlockquote17

	| output blockquote blockquote2 document paragraph paragraph2 str str2 break |
	output := parser parse: '> aaa', Character cr, '***', Character cr, '> bbb'.
	blockquote := MarkdownBlockquote new.
	blockquote2 := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	paragraph2 := MarkdownParagraph new.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 15;
		children: (OrderedCollection newFrom: {blockquote. break. blockquote2}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: 'aaa', Character cr;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'aaa' startingAt: 3.
	paragraph
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 6;
		innerLine: nil;
		innerStartPosition: 3;
		content: 'aaa';
		inlineElements: (MarkdownLinkedList newFrom: {str}).
	break
		beClosed;
		container: document;
		startPosition: 7;
		endPosition: 10;
		innerLine: '';
		innerStartPosition: 11;
		content: ''.
	blockquote2
		beClosed;
		container: document;
		startPosition: 11;
		endPosition: 15;
		innerLine: 'bbb';
		innerStartPosition: 13;
		children: (OrderedCollection newFrom: {paragraph2}).
	str2 := MarkdownString newFrom: 'bbb' startingAt: 13.
	paragraph2
		beClosed;
		container: document;
		startPosition: 13;
		endPosition: 15;
		innerLine: nil;
		innerStartPosition: 13;
		content: 'bbb';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
		
	self assert: document equals: output