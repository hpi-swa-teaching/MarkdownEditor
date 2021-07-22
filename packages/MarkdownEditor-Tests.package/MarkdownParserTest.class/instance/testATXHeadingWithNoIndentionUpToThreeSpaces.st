tests - ATXHeading
testATXHeadingWithNoIndentionUpToThreeSpaces

	| output document paragraph str |
	output := parser parse: '    # Level 1'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 13;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: '# Level 1'.
	str startPosition: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 13;
		innerLine: nil;
		innerStartPosition: 5;
		content: '# Level 1';
		inlines: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output