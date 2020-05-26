tests
testSetRange

	| link |
	link := MarkdownEmphasis new. 
	link setFrom: 1 to: 21.
	self assert: 1 equals: link startPosition.
	self assert: 21 equals: link endPosition