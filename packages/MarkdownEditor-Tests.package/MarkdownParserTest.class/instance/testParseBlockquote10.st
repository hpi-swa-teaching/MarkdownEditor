tests - blockquote
testParseBlockquote10

	| output blockquote document |
	output := parser parse: '>'.
	blockquote := MarkdownBlockquote new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 1;
		children: (OrderedCollection newFrom: {blockquote}).
	blockquote
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 1;
		innerLine: '';
		innerStartPosition: 2;
		children: (OrderedCollection newFrom: {}).
		
	self assert: document equals: output