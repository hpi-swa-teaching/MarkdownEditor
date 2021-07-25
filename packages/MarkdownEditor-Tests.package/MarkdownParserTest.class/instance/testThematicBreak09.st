tests - thematic break
testThematicBreak09

	| output document break |
	output := parser parse: '- - - -    '.
	break := MarkdownThematicBreak new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 11;
		children: (OrderedCollection newFrom: {break}).
	break beClosed;
		container: document;
		startPosition: 1;
		endPosition: 11;
		innerLine: '';
		innerStartPosition: 12;
		content: ''.
	self assert: document equals: output