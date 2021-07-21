tests - emphasis
testParseEmphStrong3
	
	| output expectedOutput emph str emph2 emph3 str2 |
	output := parser parseInline: 'hello******world*********squeak'.
	str := MarkdownString newFrom: 'hello'.
	emph := MarkdownBold new.
	emph2 := MarkdownBold new.
	emph3 := MarkdownBold new.
	emph3 children add: (MarkdownString newFrom: 'world').
	emph2 children add: emph3.
	emph children add: emph2.
	str2 := MarkdownString newFrom: '***squeak'.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str2}.
	
	self assert: expectedOutput equals: output