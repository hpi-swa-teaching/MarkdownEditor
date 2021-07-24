tests - ATXHeading
testATXHeadingWithIndentionUpToThreeSpaces

	| output document heading str |
	output := parser parse: ' ### Level 3'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 12;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 3' startingAt: 1.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 12;
		innerLine: '';
		innerStartPosition: 6;
		content: 'Level 3';
		inlines: (MarkdownLinkedList newFrom: {str});
		level: 3.
	self assert: document equals: output