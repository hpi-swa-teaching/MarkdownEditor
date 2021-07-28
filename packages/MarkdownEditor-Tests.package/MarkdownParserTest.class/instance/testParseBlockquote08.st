tests - blockquote
testParseBlockquote08

	| output blockquote document paragraph str str2 str3 fencedCodeBlock fencedCodeBlock2 |
	output := parser parse: '> ```', Character cr, 'foo', Character cr, '```'.
	blockquote := MarkdownBlockquote new.
	paragraph := MarkdownParagraph new.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	fencedCodeBlock2 := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {blockquote. paragraph. fencedCodeBlock2}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: '```', Character cr asString;
		innerStartPosition: 3;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: '' startingAt: 7.
	fencedCodeBlock
		beClosed;
		container: blockquote;
		startPosition: 3;
		endPosition: 6;
		innerLine: Character cr asString;
		innerStartPosition: 7;
		content: '';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: '';
		openingFence: '```'.
	str2 := MarkdownString newFrom: 'foo' startingAt: 7.
	paragraph
		beClosed;
		container: document;
		startPosition: 7;
		endPosition: 10;
		innerLine: nil;
		innerStartPosition: 7;
		content: 'foo';
		inlineElements: (MarkdownLinkedList newFrom: {str2}).
	str3 := MarkdownString newFrom: '' startingAt: 14.
	fencedCodeBlock2
		beClosed;
		container: document;
		startPosition: 11;
		endPosition: 13;
		innerLine: '';
		innerStartPosition: 14;
		content: '';
		inlineElements: (MarkdownLinkedList newFrom: {str3});
		indentation: 0;
		info: '';
		openingFence: '```'.
		
	self assert: document equals: output