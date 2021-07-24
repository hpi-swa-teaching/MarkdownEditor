tests - emphasis
testParseEmphNotStrike
	
	| output expectedOutput |
	output := parser parseInline: '~~hello~'.
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: '~~hello~' startingAt: 1)}.
	
	self assert: expectedOutput equals: output