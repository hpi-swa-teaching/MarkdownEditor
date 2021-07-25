tests - thematic break
testThematicBreak03

	| output document break |
	output := parser parse: '___'.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 3;
		children: (OrderedCollection newFrom: {break}).
	break beClosed;
		container: document;
		startPosition: 1;
		endPosition: 3;
		innerLine: '';
		innerStartPosition: 4;
		content: ''.
	self assert: document equals: output