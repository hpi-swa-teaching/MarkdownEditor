tests - ATXHeading
testATXHeadingWithIndentionUpToThreeSpaces3

	| output document heading str |
	output := parser parse: '   # Level 1'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 12;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 1'.
	str startPosition: 1.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 12;
		innerLine: '';
		innerStartPosition: 6;
		content: 'Level 1';
		inlines: (MarkdownLinkedList newFrom: {str});
		level: 1.
	self assert: document equals: output