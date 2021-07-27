tests - ATXHeading
testATXHeadingEmpty

	| output document heading |
	output := parser parse: '## '.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 3;
		children: (OrderedCollection newFrom: {heading}).
	heading
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 3;
		innerLine: '';
		innerStartPosition: 0;
		content: '';
		level: 2.	
		
	self assert: document equals: output