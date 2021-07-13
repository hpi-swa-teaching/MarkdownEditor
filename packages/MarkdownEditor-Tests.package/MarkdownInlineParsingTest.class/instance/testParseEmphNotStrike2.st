tests - emphasis
testParseEmphNotStrike2
	
	| output expectedOutput |
	output := parser parseInline: '~~hello~ ~world~'.
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString newFrom: '~~hello~ ~world~')}.
	
	self assert: expectedOutput equals: output