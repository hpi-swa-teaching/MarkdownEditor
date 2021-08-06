tests - ATXHeading
testATXHeadingWithClosingSequence5

	| output document heading str |
	output := parser parse: '# foo#'.
	heading := MarkdownATXHeading new.
	document := MarkdownDocument new.
		document beClosed;
		startPosition: 1;
		endPosition: 6;
		children: (OrderedCollection newFrom: {heading}).
	str := MarkdownString newFrom: 'foo#' startingAt: 3.
	heading beClosed;
		container: document;
		startPosition: 1;
		endPosition: 6;
		innerLine: '';
		innerStartPosition: 3;
		content: 'foo#';
		inlineElements: (MarkdownLinkedList newFrom: {str});
		level: 1.
		
	self assert: document equals: output