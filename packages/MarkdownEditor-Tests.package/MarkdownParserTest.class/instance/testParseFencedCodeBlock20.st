tests - fencedCodeBlocks
testParseFencedCodeBlock20

	| output fencedCodeBlock document str |
	output := parser parse: '~~~~    ruby startline=3 $%@#$', Character cr, 'def foo(x)', Character cr, '  return 3', Character cr, 'end', Character cr, '~~~~~~~'.
	fencedCodeBlock := MarkdownFencedCodeBlock new.
	document := MarkdownDocument new.
	document 
		beClosed;
		startPosition: 1;
		endPosition: 64;
		children: (OrderedCollection newFrom: {fencedCodeBlock}).
	str := MarkdownString newFrom: 'def foo(x)', Character cr, '  return 3', Character cr, 'end', Character cr startingAt: 32.
	fencedCodeBlock 
		beClosed;
		container: document;
		startPosition: 1;
		endPosition: 64;
		innerLine: '    ruby startline=3 $%@#$', Character cr;
		innerStartPosition: 32;
		content: 'def foo(x)', Character cr, '  return 3', Character cr, 'end', Character cr;
		inlineElements: (MarkdownLinkedList newFrom: {str});
		indentation: 0;
		info: 'ruby';
		openingFence: '~~~~'.
		
	self assert: document equals: output