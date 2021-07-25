tests - thematic break
testThematicBreak07

	| output document break |
	output := parser parse: '_____________________________________'.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 37;
		children: (OrderedCollection newFrom: {break}).
	break beClosed;
		container: document;
		startPosition: 1;
		endPosition: 37;
		innerLine: '';
		innerStartPosition: 38;
		content: ''.
	self assert: document equals: output