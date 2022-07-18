tests - length
testTotalLengthStrike

	| strike |
	strike := MarkdownStrike new.
	strike children add: (MarkdownString newFrom: 'hello' startingAt: 1).
	
	self assert: 9 equals: strike totalLength