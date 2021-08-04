tests - ATXHeading
testATXHeadingWithIndentionUpToThreeSpaces2

	| output document heading str |
	output := parser parse: '  ## Level 2'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 12;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'Level 2' startingAt: 6.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 12;
		innerLine: '';
		innerStartPosition: 6;
		content: 'Level 2';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 2.
	self assert: document equals: output