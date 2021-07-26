tests - hash
testBlockHash

	| hash expectedHash |
	hash := (MarkdownBlock new) hash.
	expectedHash := nil hash bitXor: (nil hash bitXor: (nil hash bitXor: (nil hash bitXor: true hash))).
	
	self assert: expectedHash equals: hash