tests - emphasis
testParsePlainText8

	| expectedOutput output |
	output := parser parseInline: '--', Character cr, '**', Character cr, '__'.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '--', Character cr, '**', Character cr, '__' startingAt: 1}.
	
	self assert: expectedOutput equals: output