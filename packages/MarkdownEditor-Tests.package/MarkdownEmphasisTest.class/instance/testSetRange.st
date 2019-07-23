tests
testSetRange

	| emphasis |
	emphasis := MarkdownEmphasis new. 
	emphasis setFrom: 1 to: 21.
	self assert: 1 equals: emphasis startPosition.
	self assert: 21 equals: emphasis endPosition