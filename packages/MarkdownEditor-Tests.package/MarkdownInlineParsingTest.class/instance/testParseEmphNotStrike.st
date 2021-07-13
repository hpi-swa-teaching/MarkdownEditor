tests - emphasis
testParseEmphNotStrike
	
	| output expectedOutput |
	output := parser parseInline: '~~hello~'.
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString newFrom: '~~hello~')}.
	
	self assert: expectedOutput equals: output