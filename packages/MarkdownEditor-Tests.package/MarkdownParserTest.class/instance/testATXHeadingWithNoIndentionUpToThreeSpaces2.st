tests - ATXHeading
testATXHeadingWithNoIndentionUpToThreeSpaces2	

	| output document paragraph str |
	output := parser parse: 'foo', Character cr, '    # Level 1'.
	paragraph := MarkdownParagraph new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 17;
		children: (OrderedCollection newFrom: {paragraph}).
	str := MarkdownString newFrom: 'foo', Character cr, '# Level 1' startingAt: 1.
	paragraph beClosed;
		container: document;
		startPosition: 1;
		endPosition: 17;
		innerLine: nil;
		innerStartPosition: 1;
		content: 'foo', Character cr, '# Level 1';
		inlines: (MarkdownLinkedList newFrom: {str}).
	self assert: document equals: output