tests - hash
testStringHash

	| hash expectedHash |
	hash := (MarkdownString new) hash.
	expectedHash := nil hash.
	
	self assert: expectedHash equals: hash