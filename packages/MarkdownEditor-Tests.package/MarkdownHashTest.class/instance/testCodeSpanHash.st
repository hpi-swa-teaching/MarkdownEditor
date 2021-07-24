tests - hash
testCodeSpanHash

	| hash expectedHash |
	hash := (MarkdownCodeSpan new) hash.
	expectedHash := nil hash bitXor: (nil hash bitXor: (nil hash bitXor: nil hash)).
	
	self assert: expectedHash equals: hash