tests - length
testTotalLengthBold

	| bold |
	bold := MarkdownBold new.
	bold children add: (MarkdownString newFrom: 'hello' startingAt: 1).
	
	self assert: 9 equals: bold totalLength