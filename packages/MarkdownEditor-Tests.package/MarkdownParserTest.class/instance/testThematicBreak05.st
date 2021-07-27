tests - thematic break
testThematicBreak05

	| output document break |
	output := parser parse: '  ***'.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 5;
		children: (OrderedCollection newFrom: {break}).
	break
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 5;
		innerLine: '';
		innerStartPosition: 6;
		content: ''.
	
	self assert: document equals: output