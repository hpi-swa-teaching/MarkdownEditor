tests - thematic break
testThematicBreak14

	| output document break |
	output := parser parse: '-     -      -      -'.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 21;
		children: (OrderedCollection newFrom: {break}).
	break beClosed;
		container: document;
		startPosition: 1;
		endPosition: 21;
		innerLine: '';
		innerStartPosition: 22;
		content: ''.
	self assert: document equals: output