tests - ATXHeading
testATXHeadingWithEmphasis

	| output document heading strong str |
	output := parser parse: '# **Level 1**'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 1' startingAt: 3.
	strong := MarkdownBold new.
	strong children add: str.
	strong startPosition: 1.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: '';
		innerStartPosition: 3;
		content: '**Level 1**';
		inlineElements: (MarkdownLinkedList newFrom: {strong});
		level: 1.
	self assert: document equals: output