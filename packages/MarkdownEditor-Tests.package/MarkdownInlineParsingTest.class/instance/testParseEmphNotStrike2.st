tests - emphasis
testParseEmphNotStrike2
	
	| output expectedOutput |
	output := parser parseInline: '~~hello~ ~world~' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: '~~hello~ ~world~' startingAt: 1)}.
	
	self assert: expectedOutput equals: output