tests - thematic break
testThematicBreak04

	| output document break |
	output := parser parse: ' ***'.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
	document
		beClosed;
		startPosition: 1;
		endPosition: 4;
		children: (OrderedCollection newFrom: {break}).
	break
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 4;
		innerLine: '';
		innerStartPosition: 5;
		content: ''.
	
	self assert: document equals: output