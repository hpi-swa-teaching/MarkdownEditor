emphasis
testTotalLengthItalic

	| italic |
	italic := MarkdownItalic new.
	italic children add: (MarkdownString newFrom: 'hello' startingAt: 1).
	
	self assert: 7 equals: italic totalLength