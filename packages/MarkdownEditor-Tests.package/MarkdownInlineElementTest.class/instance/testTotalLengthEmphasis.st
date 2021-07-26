emphasis
testTotalLengthEmphasis

	| bold italic strike |
	bold := MarkdownBold new.
	bold children add: (MarkdownString newFrom: 'hello' startingAt: 1).
	self assert: 9 equals: bold totalLength.
	
	italic := MarkdownItalic new.
	italic children add: (MarkdownString newFrom: 'hello' startingAt: 1).
	self assert: 7 equals: italic totalLength.
	
	strike := MarkdownStrike new.
	strike children add: (MarkdownString newFrom: 'hello' startingAt: 1).
	self assert: 9 equals: strike totalLength