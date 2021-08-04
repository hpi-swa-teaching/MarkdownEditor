tests - hash
testStringHash

	| hash |
	hash := (MarkdownString new) hash.
	
	self assert: 0 equals: hash