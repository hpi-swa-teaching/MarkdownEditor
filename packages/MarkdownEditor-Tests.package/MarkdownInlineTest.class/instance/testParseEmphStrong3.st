tests - emphasis
testParseEmphStrong3
	
	| output expectedOutput emph str emph2 emph3 str2 |
	output := parser parse: 'hello******world*********squeak'.
	str := MarkdownString2 newFrom: 'hello'.
	emph := MarkdownBold2 new.
	emph2 := MarkdownBold2 new.
	emph3 := MarkdownBold2 new.
	emph3 children add: (MarkdownString2 newFrom: 'world').
	emph2 children add: emph3.
	emph children add: emph2.
	str2 := MarkdownString2 newFrom: '***squeak'.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str2}.
	
	self assert: expectedOutput equals: output