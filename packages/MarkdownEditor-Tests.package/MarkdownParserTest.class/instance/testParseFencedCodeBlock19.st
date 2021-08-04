tests - fencedCodeBlock
testParseFencedCodeBlock19

	| output fencedCodeBlock document str |
	output := parser parse: '```ruby', Character cr, 'def foo(x)', Character cr, '  return 3', Character cr, 'end', Character cr, '```'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 37;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'def foo(x)', Character cr, '  return 3', Character cr, 'end', Character cr startingAt: 9.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 37;
		innerLine: 'ruby', Character cr;
		innerStartPosition: 9;
		content: 'def foo(x)', Character cr, '  return 3', Character cr, 'end', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: 'ruby';
		openingFence: '```'.
		
	self assert: document equals: output