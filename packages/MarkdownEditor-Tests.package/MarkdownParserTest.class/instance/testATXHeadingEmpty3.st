tests - ATXHeading
testATXHeadingEmpty3

	| output document heading |
	output := parser parse: '### ###'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 7;
		children: (OrderedCollection newFrom: {heading}).
	heading
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 7;
		innerLine: '';
		innerStartPosition: 0;
		content: '';
		level: 3.
	
	self assert: document equals: output