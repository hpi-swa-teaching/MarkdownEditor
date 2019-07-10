tests
testSetRange

	| attribute |
	attribute := MarkdownAttribute new. 
	attribute setFrom: 1 to: 21.
	self assert: 1 equals: attribute startPosition.
	self assert: 21 equals: attribute endPosition