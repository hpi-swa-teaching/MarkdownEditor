tests - hash
testFencedCodeBlockHash

	| hash expectedHash |
	hash := (MarkdownFencedCodeBlock new) hash.
	expectedHash := nil hash bitXor: (0 hash 
		bitXor: (nil hash
		bitXor: (nil hash
		bitXor: (true hash
		bitXor: ('' hash
		bitXor: (MarkdownLinkedList new hash
		bitXor: (nil hash
		bitXor: ('' hash
		bitXor: nil hash)))))))).
	
	self assert: expectedHash equals: hash