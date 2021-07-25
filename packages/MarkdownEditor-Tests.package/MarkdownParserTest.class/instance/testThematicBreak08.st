tests - thematic break
testThematicBreak08

	| output document break |
	output := parser parse: ' - - -'.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 6;
		children: (OrderedCollection newFrom: {break}).
	break beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: '';
		innerStartPosition: 7;
		content: ''.
	self assert: document equals: output